from flask import jsonify
from contextlib import closing
from main.source.db_connectivity.database_connect import SingletonDB


class DataAccessor(object):

    _instance = None

    def __init__(self):
        self.connection = SingletonDB().get_connection()

    def read(self, table=None, columns=None, where_row=None, query=None):
        with closing(self.connection.cursor()) as cursor:
            cursor.execute(query)
            data_list = cursor.fetchall()
            return data_list
        