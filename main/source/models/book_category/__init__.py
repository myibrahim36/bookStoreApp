'''
@author: Muhammad Ibrahim
'''

from main.source.models.tree import tree

class Category(object):

    def __init__(self, name, x) -> None:
        self.id = x
        self.name = name


    def __str__(self) -> str:
        return (self.id) + ' ' + self.name
    

    def __repr__(self) -> str:
        return str(self.id) + ' ' + self.name
    

    def __eq__(self, another_name):
        return self.id == another_name.id and self.name == another_name.name