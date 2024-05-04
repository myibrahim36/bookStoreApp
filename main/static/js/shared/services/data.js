/**
 * 
 */
angular.module("bookStore").factory("DataService",function($q, $http){
	endPoint="books"
		$http.defaults.useXDomain= true
		
	
	var getPopularBooks =  function(){
		return $http({
			method:'GET',
			url:config.baseUrl+ 'books/getPopularBooks',
			headers: {'Content-Type': 'application/json'}
		});
		
	}
	
	var getBookInfo =  function(params){
		return $http({
			method:'POST',
			data:angular.toJson(params),
			url:config.baseUrl+ 'books/getBookInfo',
			headers: {'Content-Type': 'application/json'}
		});
		
	}

	var getAllCategories =  function(){
		return $http.get(config.baseUrl+ 'categories/getallCategories',{headers: {'Content-Type': 'application/json'}});
	}
	
	
	 
	var getBooksByCategory =  function(category){
		return $http.post(config.baseUrl+ 'books/getBooksByCategory',angular.toJson(category),{headers: {'Content-Type': 'application/json'}});
	}
	
	var allBooks = function(){
		return $http({
			method:'POST',
			url:config.baseUrl+ 'books/getAllBooks',
			headers: {'Content-Type': 'application/json'}
		});
	}
	
	var search = function(query, context){
		return $http({
			method:'POST',
			data:angular.toJson({'context':context, 'query':query}),
			url:config.baseUrl +'books/search',
			headers: {'Content-Type': 'application/json'}
		});
	
	}

	var sortBooks = function(params){
		return $http({
			method:'POST',
			data:angular.toJson(params),
			url:config.baseUrl +'books/filter',
			headers: {'Content-Type': 'application/json'}
		});
	
	}


	return {
		"getPopularBooks":getPopularBooks,
		"getAllCategories":getAllCategories,
		"getBooksByCategory":getBooksByCategory,
		'getBookInfo':getBookInfo,
		"allBooks":allBooks,
		"search":search,
		'sortBooks':sortBooks
	}
	
})