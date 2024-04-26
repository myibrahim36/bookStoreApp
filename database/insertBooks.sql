#insert categories first to avoid foreign constraint fails error
INSERT INTO book_category (categoryName)
	VALUES ('FICTION'),('BIOGRAPHY');
    
INSERT INTO book_category (categoryName)
	VALUES ('BUSINESS & MANAGEMENT'),('CHILDREN'),('FILM'),('HEALTH'),('NON-FICTION'),('RELIGION');




INSERT INTO books (ISBN, bookTitle, authors, publisher,cat_id, availableCopyCount, bookPrice,imageLocation) 
    VALUES ('978-1401312855','The Time Keeper','Mitch Albom','Hachette Books',2,5,8.42,'main/artifacts/bookcovers/time_keepers')
,('978-0143125471','The Boys in the Boat: Nine Americans and Their Epic Quest for Gold at the 1936 Berlin Olympics','Daniel James Brown','Penguin Books',3,3,9.49,'main/artifacts/bookcovers/boys_in_boat')
,('978-1476764832','The Time Traveler"s Wife','Audrey Niffenegger', 'Scribner',1,6,14.28,'main/artifacts/bookcovers/time_traveler')
,('978-1400033805','The Closing of the Western Mind: The Rise of Faith and the Fall of Reason','Charles Freeman','Vintage',1,4,13.32,'main/artifacts/bookcovers/closing_western_mind')
,('978-0452299030','The Sign: The Shroud of Turin and the Secret of the Resurrection','Thomas de Wesselow','Plume',3,10,16.2,'main/artifacts/bookcovers/shroud_of_turin')
,('978-0465054725','The Magic of Math: Solving for x and Figuring Out Why','Arthur Benjamin','Basic Books',3,2,14.84,'main/artifacts/bookcovers/magic_math')
,('978-1848162730', 'Time, Space, Stars & Man: The Story of the Big Bang','Michael M. Woolfson','World Scientific Publishing Company',2,4,83.05,'main/artifacts/bookcovers/space_stars_man')
,('978-0062409850','Go Set a Watchman: A Novel','Harper Lee','Harper',4,10,15.52,'main/artifacts/bookcovers/watchman')
,('978-0446310789','To Kill a Mockingbird', 'Harper Lee','Harper',5,2,5.15,'main/artifacts/bookcovers/mockingbird')
,('978-0743477116','Romeo and Juliet (Folger Shakespeare Library)','William Shakespeare','Simon & Schuster',6,2,3.68,'main/artifacts/bookcovers/romeo_juliet')
,('978-0399501487','Lord of the Flies','William Golding','Perigee Books',7,2,6.2,'main/artifacts/bookcovers/lord_of_flies')
,('978-0140177398','Of Mice and Men','John Steinbeck','Penguin Books',7,8,7.14, 'main/artifacts/bookcovers/mice_men')
,('978-0316346627','The Tipping Point: How Little Things Can Make a Big Difference','Malcolm Gladwell','Back Bay Books',3,2,12.55, 'main/artifacts/bookcovers/tipping_point')
,('978-0316204361', 'David and Goliath: Underdogs,  Misfits,  and the Art of Battling Giants','Malcolm Gladwell', 'Little, Brown and Company',8,3,17.25, 'main/artifacts/bookcovers/david_goliath')
,('978-0316017923','Outliers: The Story of Success','Malcolm Gladwell','Little,  Brown and Company',8,5,12.42,'main/artifacts/bookcovers/outliers')
,('978-0374275631', 'Thinking,  Fast and Slow','Daniel Kahneman','Farrar,  Straus and Giroux',2,3,19.23,'main/artifacts/bookcovers/thinking_fast_slow')
,('978-1594634475','Fates and Furies: A Novel','Lauren Groff','Riverhead Books',3,6,16.77, 'main/artifacts/bookcovers/fates_and_furies')
,('978-0812993547','Between the World and Me','Ta-Nehisi Coates','Spiegel & Grau',5,6,14.4, 'main/artifacts/bookcovers/world_and_me')
,('978-0399175527','Baby Penguins Love their Mama','Melissa Guion','Philomel Books',4,5,6.99, 'main/artifacts/bookcovers/baby_penguins')
,('978-0762409815', 'One Up On Wall Street','Peter Lynch','Simon & Schuster',6,6,9.55, 'main/artifacts/bookcovers/one_up_wallstreet')
,('978-0316200615', 'The Witches: Salem, 1692', 'Stacy Schiff', 'Little, Brown and Company',1,9,17.6, 'main/artifacts/bookcovers/salem_witches')
,('978-0345542960','Tricky Twenty-Two: A Stephanie Plum Novel','Janet Evanovich','Bantam',3,5,15.1, 'main/artifacts/bookcovers/tricky22');


