# Desafio 3
## História com TDD

### Descrição do desafio
Desenvolva uma solução em linguagem de programação de sua preferência para atender aos critérios da história abaixo, usando TDD:

**Como** lojista
**Quero** saber quanto de desconto posso conceder no carrinho
**Para** fidelizar um cliente

Critérios
- Acima de 100 reais e abaixo de 200 reais => 10%
- Acima de 200 reais e abaixo de 300 reais => 20%
- Acima de 300 reais e abaixo de 400 reais => 25%
- Acima de 400 reais => 30%
- Se existir no carrinho um filme com gênero ação somar + 5% de desconto

| Id Filme | Nome Filme           | Gênero   | R$     |
|----------|----------------------|----------|--------|
| 1        | Senhor dos Anéis     | Fantasia | 45,00  |
| 2        | As Branquelas        | Comédia  | 55,00  |
| 3        | Velozes e Furiosos 7 | Ação     | 100,00 |
| 4        | Velozes e Furiosos 6 | Ação     | 55,00  |
| 5        | The Scapegoat        | Drama    | 100,00 |
| 6        | Meu Malvado Favorito | Animação | 200,00 |

Regras
- Criar somente uma classe
- Carrinho será um array de int com ids dos filmes
- Passar sempre valor da compra + id do filme

### Instruções para execução
1. Baixe o projeto na sua máquina local.
2. Através de um terminal, navegue até o diretório do projeto e instale as dependências npm com o comando:
```
npm install
```
3. Execute os testes com Cypress utilizando um dos comandos personalizados
   - Executar testes com navegador interno (Electron sem interface)
     - ```npm run test```
   - Executar testes com navegador interno (Electron sem interface) e enviar resultados para Cypress Dashboard/GitHub
     - ```npm run test-ci```
   - Executar testes com Google Chrome
     - ```npm run test-chrome```
   - Executar testes com Google Chrome e enviar resultados para Cypress Dashboard/GitHub 
     - ```npm run test-chrome-ci```
   - Executar testes com Microsoft Edge
     - ```npm run test-edge```
   - Executar testes com Microsoft Edge e enviar resultados para Cypress Dashboard/GitHub 
     - ```npm run test-edge-ci```
   - Executar testes com Mozilla Firefox
     - ```npm run test-firefox```
   - Executar testes com Mozilla Firefox e enviar resultados para Cypress Dashboard/GitHub 
     - ```npm run test-firefox-ci```
   - Abrir Cypress IDE (Contém mais opções padrões de teste, porém não gera artefatos, como vídeos)
     - ```npm run cypress-ide```
4. O Cypress irá gerar gravações de vídeo dos testes como artefatos na pasta ```cypress\videos```
5. O relatório de cobertura de código pode ser encontrado no diretório ```coverage\lcov-report\index.html```
6. No caso dos testes com CI, os relatórios, resultados, vídeos e artefatos podem ser acessados no link: [Cypress Dashboard: tdd-challenge](https://dashboard.cypress.io/projects/tc7y9g/runs?branches=%5B%5D&committers=%5B%5D&flaky=%5B%5D&page=1&status=%5B%5D&tags=%5B%5D&timeRange=%7B%22startDate%22%3A%221970-01-01%22%2C%22endDate%22%3A%222038-01-19%22%7D)

#### Observações:
- Foi considerado que quando nenhum critério de desconto foi aplicado, o desconto adicional de 5% para filmes de ação não seria válido
- O código utilizado nos testes contido em ```instrumented\index.js``` é uma versão instrumentada do código fonte em si, contido em ```src\index.js```
  - Para gerar uma norva versão instrumentada na pasta correta, utilize o comando:
    - ```npx nyc instrument --compact=false src instrumented```