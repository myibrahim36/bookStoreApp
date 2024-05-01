'''
@author: Muhammad Ibrahim

Singleton Pattern db connection design.
'''

import pymysql.cursors
import db_env



class SingletonDB(object):
    _instance = None
    connection = None

    def __init__(self):
        
        try:
            self.connection = pymysql.connect(host=db_env.HOST,
                                              user=db_env.DB_USER,
                                              password=db_env.DB_PASSWORD,
                                              database=db_env.DB_NAME,
                                              charset=db_env.DB_CHARSET,
                                              cursorclass=pymysql.cursors.DictCursor)
            self.connection.autocommit(True)
        except pymysql.Error as e:
            print ("Could not make a successful connection to the database. MySQL error %d: %s" %(e.args[0], e.args[1]))

            
    def get_connection(self):
        
        return self.connection

    def close(self):
        
        self.connection.close()


"""
import mysql.connector

class MySQLConnectionFactory:
    _instance = None
    _connection = None

    def __new__(cls):
        if cls._instance is None:
            cls._instance = super().__new__(cls)
        return cls._instance

    def get_connection(self):
        if self._connection is None:
            # Replace with your actual MySQL database configuration
            db_config = {
                'user': 'your_username',
                'password': 'your_password',
                'host': 'localhost',
                'database': 'your_database',
            }
            self._connection = mysql.connector.connect(**db_config)
            print("MySQL connection opened.")
        return self._connection

    def close_connection(self):
        if self._connection is not None:
            self._connection.close()
            print("MySQL connection closed.")
            self._connection = None

    """

# Usage example:
"""if __name__ == "__main__":
    factory = MySQLConnectionFactory()
    connection1 = factory.get_connection()
    connection2 = factory.get_connection()

    # Both connections should be the same instance
    assert connection1 is connection2

    # Close the connection
    factory.close_connection()
"""