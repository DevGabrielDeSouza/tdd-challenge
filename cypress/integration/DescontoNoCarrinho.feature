Feature: Conceder desconto no carrinho

	Scenario: Compra acima de R$ 100 e abaixo de R$ 200 com filme de ação
		Given que o filme "Senhor dos Anéis" está no carrinho
		And que o filme "Velozes e Furiosos 7" está no carrinho
		And que o filme "Meu Malvado Favorito" está no carrinho
		When o lojista checa o desconto que pode conceder no carrinho
		Then o desconto deve ser de "15%"

	# Scenario: Compra acima de R$ 100 e abaixo de R$ 200 sem filme de ação

	# Scenario: Compra acima de R$ 200 e abaixo de R$ 300 com filme de ação

	# Scenario: Compra acima de R$ 200 e abaixo de R$ 300 sem filme de ação

	# Scenario: Compra acima de R$ 300 e abaixo de R$ 400 com filme de ação

	# Scenario: Compra acima de R$ 300 e abaixo de R$ 400 sem filme de ação

	# Scenario: Compra acima de R$ 400 com filme de ação

	# Scenario: Compra acima de R$ 400 sem filme de ação