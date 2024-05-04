'''
@autor: MuhammadIbra
'''

class Category(object):


    def __init__(self, cat_id, name,sub_cat=None):
        self.id = cat_id
        self.name = name
        
        if sub_cat:
            self.sub_category = sub_cat