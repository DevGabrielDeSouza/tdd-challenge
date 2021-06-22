/// <reference types="cypress" />
import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

import Store from "../../../instrumented/index"


Given(/^que o carrinho está vazio$/, () => {
	Store.resetCart();
	expect(Store.cart).to.be.empty;
});

Given(/^que adicionam mais uma unidade do filme com Id "([^"]*)" no carrinho$/, (idDoFilme) => {
	Store.addMovieByIdToCart(idDoFilme);
	expect(Store.cart).to.contains(parseInt(idDoFilme));
});

When(/^o lojista checa o desconto que pode conceder$/, () => {
	return true;
});

Then(/^o desconto deve ser de "([^"]*)"%$/, (expectedDiscount) => {
	expect(Store.getCartInfo().discount).to.be.equal(parseInt(expectedDiscount));
});
