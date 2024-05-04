
from contextlib import closing

from flask import jsonify, request
from flask_restful import Resource

from main.source.db_connectivity.database_connect import SingletonDB
from main.source.book.dao.BookDao import BookDao
from main.source.searchengine import SearchEngine

from ..models.books.BookRepository import BookRepository


dao = BookDao()
searchEngine = SearchEngine()


class BookApi(Resource):

    def post(self):
        try:
            bookList = dao.get_all_books()
        except Exception as e:
            print("popular_book_api", e)


class PopularBookApi(Resource):
    '''
    classdocs
    '''

    def get(self):
        try:
            return jsonify({"books": dao.get_popular_books(), "type": "popular"})
        except Exception as e:
            print("popular_book_api", e)


class BookDescriptionApi(Resource):

    def post(self):
        try:
            bookInfo = dao.getBookInfo(request.json.get('isbn'))
            return jsonify({'status': 'success', 'bookData': bookInfo})
        except Exception:
            return jsonify({'status': 'failed', 'message': 'could not fetch the book info'})


class BookByCategoryApi(Resource):
    '''
    classdocs
    '''

    def post(self):
        try:
            return jsonify({"books": dao.get_books_by_category(request.get_json()), "type": "popular"})
        except Exception as e:
            print("popular_book_api", e)


class SearchBookApi(Resource):
    '''
    classdocs
    '''

    def post(self):
        try:
            return jsonify({"searchResult": dao.searchBooks(request.json.get('query'))})
        except Exception as e:
            print("SearchBookApi", e)


class FilterBookApi(Resource):

    def post(self):
        try:
            sortParam = request.json.get('sortParam')
            filterParam = (request.json.get('filterParam').get(
                'name'), int(request.json.get('filterParam').get('id')))
            searchText = request.json.get('searchText')

            return jsonify({'status': 'success', 'result': dao.filterBooks(sortParam, filterParam, searchText)})
        except Exception as e:
            print('SortBooksApi', e)