Feature: Conceder desconto no carrinho

	Background: Usuário começou a usar um novo carrinho
		Given que o carrinho está vazio

	Scenario: Compra acima de R$ 100 e abaixo de R$ 200 sem filme de ação
		Given que adicionam uma unidade do filme "Senhor dos Anéis" no carrinho
		And que adicionam uma unidade do filme "The Scapegoat" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "10%"

	Scenario: Compra acima de R$ 100 e abaixo de R$ 200 com filme de ação
		And que adicionam uma unidade do filme "Velozes e Furiosos 7" no carrinho
		And que adicionam uma unidade do filme "As Branquelas" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "15%"

	Scenario: Compra acima de R$ 200 e abaixo de R$ 300 sem filme de ação
		Given que adicionam uma unidade do filme "Senhor dos Anéis" no carrinho
		And que adicionam uma unidade do filme "Meu Malvado Favorito" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "20%"

	Scenario: Compra acima de R$ 200 e abaixo de R$ 300 com filme de ação
		Given que adicionam uma unidade do filme "Senhor dos Anéis" no carrinho
		And que adicionam uma unidade do filme "Velozes e Furiosos 7" no carrinho
		And que adicionam uma unidade do filme "The Scapegoat" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "25%"

	Scenario: Compra acima de R$ 300 e abaixo de R$ 400 sem filme de ação
		Given que adicionam uma unidade do filme "Senhor dos Anéis" no carrinho
		And que adicionam uma unidade do filme "Meu Malvado Favorito" no carrinho
		And que adicionam uma unidade do filme "The Scapegoat" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "25%"

	Scenario: Compra acima de R$ 300 e abaixo de R$ 400 com filme de ação
		Given que adicionam uma unidade do filme "Senhor dos Anéis" no carrinho
		And que adicionam uma unidade do filme "Velozes e Furiosos 7" no carrinho
		And que adicionam uma unidade do filme "Meu Malvado Favorito" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "30%"

	Scenario: Compra acima de R$ 400 sem filme de ação
		Given que adicionam uma unidade do filme "Senhor dos Anéis" no carrinho
		And que adicionam uma unidade do filme "As Branquelas" no carrinho
		And que adicionam uma unidade do filme "The Scapegoat" no carrinho
		And que adicionam uma unidade do filme "Meu Malvado Favorito" no carrinho
		And que adicionam uma unidade do filme "Meu Malvado Favorito" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "30%"

	Scenario: Compra acima de R$ 400 com filme de ação
		Given que adicionam uma unidade do filme "Senhor dos Anéis" no carrinho
		And que adicionam uma unidade do filme "Velozes e Furiosos 7" no carrinho
		And que adicionam uma unidade do filme "Meu Malvado Favorito" no carrinho
		And que adicionam uma unidade do filme "The Scapegoat" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "15%"

	# Boundaries
	Scenario: Compra abaixo de R$ 100 sem filme de ação
		Given que adicionam uma unidade do filme "Senhor dos Anéis" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0%"

	Scenario: Compra abaixo de R$ 100 com filme de ação
		Given que adicionam uma unidade do filme "Velozes e Furiosos 6" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0%"

	Scenario: Compra de R$ 100 sem filme de ação
		Given que adicionam uma unidade do filme "The Scapegoat" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0%"

	Scenario: Compra de R$ 100 com filme de ação
		Given que adicionam uma unidade do filme "Senhor dos Anéis" no carrinho
		And que adicionam uma unidade do filme "Velozes e Furiosos 6" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0%"

	Scenario: Compra de R$ 200 sem filme de ação
		Given que adicionam uma unidade do filme "Meu Malvado Favorito" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0%"

	Scenario: Compra de R$ 200 com filme de ação
		Given que adicionam uma unidade do filme "Velozes e Furiosos 7" no carrinho
		And que adicionam uma unidade do filme "The Scapegoat" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0%"

	Scenario: Compra de R$ 300 sem filme de ação
		Given que adicionam uma unidade do filme "Meu Malvado Favorito" no carrinho
		And que adicionam uma unidade do filme "The Scapegoat" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0%"

	Scenario: Compra de R$ 300 com filme de ação
		Given que adicionam uma unidade do filme "Velozes e Furiosos 7" no carrinho
		And que adicionam uma unidade do filme "Meu Malvado Favorito" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0%"

	Scenario: Compra de R$ 400 sem filme de ação
		Given que adicionam uma unidade do filme "Senhor dos Anéis" no carrinho
		And que adicionam uma unidade do filme "As Branquelas" no carrinho
		And que adicionam uma unidade do filme "Meu Malvado Favorito" no carrinho
		And que adicionam uma unidade do filme "The Scapegoat" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0%"

	Scenario: Compra de R$ 400 com filme de ação
		Given que adicionam uma unidade do filme "Velozes e Furiosos 7" no carrinho
		And que adicionam uma unidade do filme "Meu Malvado Favorito" no carrinho
		And que adicionam uma unidade do filme "The Scapegoat" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0%"