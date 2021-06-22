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

	static addMovieByIdToCart(movieId){
		filmes.find(function(item){
			if(item.id == movieId){
				Store.cart.push(item.id);
			}
		});
	}

	static getCartInfo(){
		let price = 0;
		let discount = 0;
		let additionalDiscount = 0;

		let discountBonusRulesToCheck = discountGenreRules.map(object => ({...object}));

		//#region Percorre e processa filmes do carrinho
		for(const cartItem of Store.cart){
			//Percorre filmes da base de dados 
			filmes.find(function(storeItemInfo){
				//Adiciona preço e desconto do filme quando encontrado
				if(cartItem == storeItemInfo.id){
					price += storeItemInfo.price;

					//#region Checa se o gênero do filme dá direito a desconto adicional (Ação) 
					let currentRuleIndex = 0;
					discountBonusRulesToCheck.find(function(currentBonusRule){
						if(currentBonusRule == undefined) return;

						if(storeItemInfo.genre == currentBonusRule.genre){
							additionalDiscount += currentBonusRule.discount;
							discountBonusRulesToCheck.splice(currentRuleIndex, 1);
							return;
						}
						currentRuleIndex++;
					});
					//#endregion

					return;
				}
			});
		}
		//#endregion

		discountPriceRules.find(function(priceRuleToCheck){
			if(price > priceRuleToCheck.min && price < priceRuleToCheck.max){
				discount += priceRuleToCheck.discount;
			}
		});

		if(discount > 0) discount += additionalDiscount;

		return {
			"price": price,
			"discount": discount
		};
	}
}