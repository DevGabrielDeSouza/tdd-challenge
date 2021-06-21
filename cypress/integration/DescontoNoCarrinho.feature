Feature: Conceder desconto no carrinho

	Background: Usuário começou a usar um novo carrinho
		Given que o carrinho está vazio

	Scenario: Compra acima de R$ 100 e abaixo de R$ 200 sem filme de ação
		Given que adicionam mais uma unidade do filme com Id "1" no carrinho
		And que adicionam mais uma unidade do filme com Id "5" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "10"%

	Scenario: Compra acima de R$ 100 e abaixo de R$ 200 com filme de ação
		Given que adicionam mais uma unidade do filme com Id "3" no carrinho
		And que adicionam mais uma unidade do filme com Id "2" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "15"%

	Scenario: Compra acima de R$ 200 e abaixo de R$ 300 sem filme de ação
		Given que adicionam mais uma unidade do filme com Id "1" no carrinho
		And que adicionam mais uma unidade do filme com Id "6" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "20"%

	Scenario: Compra acima de R$ 200 e abaixo de R$ 300 com filme de ação
		Given que adicionam mais uma unidade do filme com Id "1" no carrinho
		And que adicionam mais uma unidade do filme com Id "3" no carrinho
		And que adicionam mais uma unidade do filme com Id "5" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "25"%

	Scenario: Compra acima de R$ 300 e abaixo de R$ 400 sem filme de ação
		Given que adicionam mais uma unidade do filme com Id "1" no carrinho
		And que adicionam mais uma unidade do filme com Id "6" no carrinho
		And que adicionam mais uma unidade do filme com Id "5" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "25"%

	Scenario: Compra acima de R$ 300 e abaixo de R$ 400 com filme de ação
		Given que adicionam mais uma unidade do filme com Id "1" no carrinho
		And que adicionam mais uma unidade do filme com Id "3" no carrinho
		And que adicionam mais uma unidade do filme com Id "6" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "30"%

	Scenario: Compra acima de R$ 400 sem filme de ação
		Given que adicionam mais uma unidade do filme com Id "1" no carrinho
		And que adicionam mais uma unidade do filme com Id "2" no carrinho
		And que adicionam mais uma unidade do filme com Id "5" no carrinho
		And que adicionam mais uma unidade do filme com Id "6" no carrinho
		And que adicionam mais uma unidade do filme com Id "6" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "30"%

	Scenario: Compra acima de R$ 400 com filme de ação
		Given que adicionam mais uma unidade do filme com Id "1" no carrinho
		And que adicionam mais uma unidade do filme com Id "3" no carrinho
		And que adicionam mais uma unidade do filme com Id "6" no carrinho
		And que adicionam mais uma unidade do filme com Id "5" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "35"%

	# Boundaries
	Scenario: Compra abaixo de R$ 100 sem filme de ação
		Given que adicionam mais uma unidade do filme com Id "1" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0"%

	Scenario: Compra abaixo de R$ 100 com filme de ação
		Given que adicionam mais uma unidade do filme com Id "4" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0"%

	Scenario: Compra de R$ 100 sem filme de ação
		Given que adicionam mais uma unidade do filme com Id "5" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0"%

	Scenario: Compra de R$ 100 com filme de ação
		Given que adicionam mais uma unidade do filme com Id "1" no carrinho
		And que adicionam mais uma unidade do filme com Id "4" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0"%

	Scenario: Compra de R$ 200 sem filme de ação
		Given que adicionam mais uma unidade do filme com Id "6" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0"%

	Scenario: Compra de R$ 200 com filme de ação
		Given que adicionam mais uma unidade do filme com Id "3" no carrinho
		And que adicionam mais uma unidade do filme com Id "5" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0"%

	Scenario: Compra de R$ 300 sem filme de ação
		Given que adicionam mais uma unidade do filme com Id "6" no carrinho
		And que adicionam mais uma unidade do filme com Id "5" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0"%

	Scenario: Compra de R$ 300 com filme de ação
		Given que adicionam mais uma unidade do filme com Id "3" no carrinho
		And que adicionam mais uma unidade do filme com Id "6" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0"%

	Scenario: Compra de R$ 400 sem filme de ação
		Given que adicionam mais uma unidade do filme com Id "1" no carrinho
		And que adicionam mais uma unidade do filme com Id "2" no carrinho
		And que adicionam mais uma unidade do filme com Id "6" no carrinho
		And que adicionam mais uma unidade do filme com Id "5" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0"%

	Scenario: Compra de R$ 400 com filme de ação
		Given que adicionam mais uma unidade do filme com Id "3" no carrinho
		And que adicionam mais uma unidade do filme com Id "6" no carrinho
		And que adicionam mais uma unidade do filme com Id "5" no carrinho
		When o lojista checa o desconto que pode conceder
		Then o desconto deve ser de "0"%