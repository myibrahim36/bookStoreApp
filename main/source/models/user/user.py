'''
@author: Muhammad Ibrahim
'''

class user(object):

    def __init__(self, seq = None, username = None, userID = None, gender = None, totalSpent = 0.00, monthsSinceLastPurchase = 0, totalNumberOfPurchases = 0, monthsSinceFirstPurchase = 0, firstName = None, lastName = None, userPass = None):

        '''
        Constructor based off database book table
        '''
        
        self.seq = seq
        self.username = username
        self.userID = userID
        self.gender = gender
        self.totalSpent = totalSpent
        self.monthSinceLastPurchase = monthsSinceLastPurchase
        self.totalNumberOfPurchases = totalNumberOfPurchases
        self.monthSinceFirstPurchase = monthsSinceFirstPurchase
        self.firstName = firstName
        self.lastName = lastName
        self.userPass = userPass
