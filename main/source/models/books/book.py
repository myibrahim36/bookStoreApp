'''
@author: Muhammad Ibrahim
'''

class book(object):

    def __init__(self, isbn = None, title = None, authors = [], publisher = None, cat_id= None, available = 0, price = 0.00, image_location = None):

        '''
        Constructor based off database book table
        '''
        
        self.isbn = isbn
        self.title = title
        self.authors = authors
        self.publisher = publisher
        self.cat_id = cat_id
        self.available = available
        self.price = price
        self.image_location = image_location
