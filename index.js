const filmes = [
	{
		"id" : 1,
		"name": "Senhor dos Anéis",
		"genre": "Fantasia",
		"price": 45
	},
	{
		"id" : 2,
		"name": "As Branquelas",
		"genre": "Comédia",
		"price": 55
	},
	{
		"id" : 3,
		"name": "Velozes e Furiosos 7",
		"genre": "Ação",
		"price": 100
	},
	{
		"id" : 4,
		"name": "Velozes e Furiosos 6",
		"genre": "Ação",
		"price": 55
	},
	{
		"id" : 5,
		"name": "The Scapegoat",
		"genre": "Drama",
		"price": 100
	},
	{
		"id" : 6,
		"name": "Meu Malvado Favorito",
		"genre": "Animação",
		"price": 200
	},
	{
		"id" : 7,
		"name": "Turma da Mônica",
		"genre": "Animação",
		"price": 200
	},
]

const discountPriceRules = [
	{
		"min": 100, 
		"max": 200, 
		"discount": 10
	},
	{
		"min": 200, 
		"max": 300, 
		"discount": 20
	},
	{
		"min": 300, 
		"max": 400, 
		"discount": 25
	},
	{
		"min": 400, 
		"max": Infinity, 
		"discount": 30
	},
];

const discountGenreRules = [
	{
		"genre": "Ação",
		"discount": 5
	}
];

module.exports = class Store{

	static cart = [];

	static resetCart(){
		Store.cart = [];
	}

	static addMovieNameToCart(movieName){
		filmes.find(function(item){
			if(item.name == movieName){
				Store.cart.push(item.id);
			}
		});
	}

	static addMovieIdToCart(movieId){
		filmes.find(function(item){
			if(item.id == movieId){
				Store.cart.push(item.id);
			}
		});
	}
}