
function Book(isbn, title, authors, publisher, category, available_copies, price,image_loc){
	this.isbn = isbn
	this.title = title
	this.authors = authors
	this.publisher = publisher
	this.category = category()
	this.available_copies = available_copies
	this.price = price
	this.image_loc = image_loc
	
}