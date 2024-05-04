

from flask import Flask, redirect, render_template

from flask.blueprints import Blueprint

from main.source.cart import cart_manager
from main.source.order import order_manager
from main.source.payment import payment
from main.source.shipment import shipment
from main.source.wishlist import wishlist_mgr
from .source.book import book_manager
from .source.category import category


app = Flask(__name__, static_url_path='/static')
bookstore = Blueprint("bookstore", __name__)

@app.route("/")
def index():
    return render_template("index.html")

app.run()

app.register_blueprint(bookstore)
app.register_blueprint(book_manager)
app.register_blueprint(category)
app.register_blueprint(cart_manager)
app.register_blueprint(payment)
app.register_blueprint(shipment)
app.register_blueprint(order_manager)
app.register_blueprint(wishlist_mgr)