
from flask import jsonify

from data_access import DataAccessor

class book_dao(DataAccessor):
    
    def __init__(self):
        
        super(book_dao,self).__init__()

    def get_some_books(self):
        try:
            query =("select isbn, title, authors, publisher, available_copies, price,image_loc "
                    "from books "
                    )
            book_list = super(book_dao,self).read(query= query)
            return book_list
        except Exception as e:
            print(e,"get_some_books")
       

"""     
    def get_popular_books(self):
        try:
            query =("select isbn, title, authors, publisher, available_copies, price,image_loc,sub_cat_id ,category_id,sub_category.name as sub_name,category.name as name "
                    "from books "
                    "left join ("
                    "Sub_category left join Category "
                    "on Sub_Category.sub_cat_id=Category.cat_id) "
                    "on books.category_id=sub_category.sub_cat_id "
                    "where books.ratings<={} and books.ratings>{};").format(BookConfig.popular_max_rt, BookConfig.popular_min_rt)
            book_list = super(book_dao,self).read(query= query)
            return book_list
        except Exception as e:
            print(e,"get_popular_books")
"""

            
def get_some_books(self):
        try:
            query =("select isbn, title, authors, publisher, available_copies, price,image_loc "
                    "from books "
                    )
            book_list = super(book_dao,self).read(query= query)
            return book_list
        except Exception as e:
            print(e,"get_some_books")
        