
CREATE TABLE book_category (
  categoryID int(20) NOT NULL AUTO_INCREMENT,
  categoryName varchar(100) NOT NULL,
  categoryParent int(20) DEFAULT NULL
  PRIMARY KEY (categoryID)
);

CREATE TABLE books (
  ISBN varchar(25) NOT NULL PRIMARY KEY,
  bookTitle varchar(100) DEFAULT NULL,
  authors varchar(250) DEFAULT NULL,
  publisher varchar(100) DEFAULT NULL,
  cat_id int(20) DEFAULT NULL,
  availableCopyCount int(20) DEFAULT NULL,
  bookPrice double DEFAULT NULL,
  imageLocation varchar(250) DEFAULT NULL,
  bookDescription varchar(4000) DEFAULT NULL,
  PRIMARY KEY (ISBN)
  KEY cat_id (cat_id),
  FULLTEXT KEY Title (bookTitle,bookDescription),
  FULLTEXT KEY Title_2 (bookTitle,bookDescription),
  FULLTEXT KEY Title_3 (bookTitle),
  FULLTEXT KEY Title_4 (bookTitle, bookDescription),
  FULLTEXT KEY Title_5 (bookTitle),
  CONSTRAINT books_ibfk_1 FOREIGN KEY (cat_id) REFERENCES book_category (categoryID)
);

CREATE TABLE user (
  Seq int (20),
  username varchar(250),
  userID int (20) NOT NULL,
  gender int(1) DEFAULT NULL,
  totalSpent double DEFAULT NULL,
  monthsSinceLastPurchase int(10) DEFAULT '0', 
  totalNumberOfPurchases int(10) DEFAULT '0',
  monthsSinceFirstPurchase int(10) DEFAULT '0',
  firstName varchar(100) DEFAULT NULL,
  lastName varchar(100) DEFAULT NULL
  password varchar(128) DEFAULT NULL,
  PRIMARY KEY(userID)
);

CREATE TABLE admin (
  adminID char(20) NOT NULL,
  adminUserName varchar(50) DEFAULT NULL,
  Password varchar(16) DEFAULT NULL,
  PRIMARY KEY (adminID)
);

CREATE TABLE orders (
  order_id int(10) NOT NULL AUTO_INCREMENT,
  timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  userLogin_id char(20) DEFAULT NULL,
  Status enum('Order In transit','Processing Payment','Order Delivered to Customer','Order In Warehouse') DEFAULT NULL,
  PRIMARY KEY (order_id),
  KEY login_id (userLogin_id),
  CONSTRAINT orders_ibfk_1 FOREIGN KEY (userLogin_id) REFERENCES user (userID) ON DELETE CASCADE
);

CREATE TABLE book_order (
  ISBN char(25) DEFAULT NULL,
  copiesOrdered int(10) DEFAULT NULL,
  order_id int(10) NOT NULL,
  KEY ISBN (ISBN),
  KEY Order_id (Order_id),
  CONSTRAINT book_order_ibfk_1 FOREIGN KEY (ISBN) REFERENCES books (ISBN) ON DELETE CASCADE,
  CONSTRAINT book_order_ibfk_2 FOREIGN KEY (Order_id) REFERENCES orders (Order_id) ON DELETE CASCADE
);


CREATE TABLE order_detail (
  ISBN char(25) DEFAULT NULL,
  item_id varchar(10) NOT NULL,
  Order_id int(10) NOT NULL,
  total double(5,2) DEFAULT NULL,
  discount int(11) DEFAULT '0',
  KEY ISBN (ISBN),
  KEY Order_id (Order_id),
  CONSTRAINT order_detail_ibfk_1 FOREIGN KEY (ISBN) REFERENCES books (ISBN) ON DELETE CASCADE,
  CONSTRAINT order_detail_ibfk_2 FOREIGN KEY (Order_id) REFERENCES orders (order_id) ON DELETE CASCADE
);

CREATE TABLE cart (
  cart_id varchar(10) NOT NULL,
  user_id char(20) NOT NULL,
  total double DEFAULT '0',
  count int(11) NOT NULL DEFAULT '0',
  item_id char(20) DEFAULT NULL,
  KEY user_id (user_id),
  CONSTRAINT cart_ibfk_1 FOREIGN KEY (user_id) REFERENCES user (userID)
);

CREATE TABLE feedback (
  user_id char(20) NOT NULL,
  ISBN char(25) NOT NULL,
  Score int(11) DEFAULT NULL,
  Date date DEFAULT NULL,
  Short_text varchar(140) DEFAULT NULL,
  PRIMARY KEY (user_id,ISBN),
  KEY ISBN (ISBN),
  CONSTRAINT feedback_ibfk_1 FOREIGN KEY (user_id) REFERENCES user (userID),
  CONSTRAINT feedback_ibfk_2 FOREIGN KEY (ISBN) REFERENCES books (ISBN)
);


CREATE TABLE rating (
  Score int(11) DEFAULT NULL,
  Rater_id char(10) NOT NULL,
  Ratee_id char(10) NOT NULL,
  ISBN char(14) NOT NULL,
  comments varchar(200) DEFAULT NULL,
  PRIMARY KEY (ISBN,Rater_id,Ratee_id),
  KEY Rater_id (Rater_id),
  KEY Ratee_id (Ratee_id),
  CONSTRAINT rating_ibfk_1 FOREIGN KEY (Rater_id) REFERENCES user (userID),
  CONSTRAINT rating_ibfk_2 FOREIGN KEY (Ratee_id) REFERENCES feedback (user_id)
);