'''
@author: Muhammad Ibrahim
'''

class node():
    def __init__(self, data):
        self.data = data
        self.children = []

    def __str__(self):
        return str(self.data)
    
    def __repr__(self) -> str:
        return str(self.data) + str(self.children)
    


class tree(object):
    _instance = None

    def __init__(self, root):
        self.root = node(root)

    def find(self, data):
        return self.__find__(self.root, data)
    
    def add(self, data, parent):
        if parent == self.root.data:
            self.root.children.append(node(data))
            return True
        if data is not self.root.data:
            parentNode = self.find(parent)
            if parentNode is not None:
                parentNode.children.append(node(data))
                return True
            
    

    def getChildren(self, node, childrenList):
        for x in node.children:
            childrenList.append(x.data.id)
            self.getChildren(x, childrenList)

    def getAllChildren(self, data):
        node = self.find(data)
        childrenList = []
        if node is not None:
            self.getChildren(node, childrenList)
        return childrenList

    def __find__(self, node, data):
        result = None
        if node.data == data:
            return node
        else:
            for x in node.children:
                result = self.__find__(x, data)
                if result is not None:
                    return result
            return result
