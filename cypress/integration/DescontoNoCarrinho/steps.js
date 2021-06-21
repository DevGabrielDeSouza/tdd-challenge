/// <reference types="cypress" />
import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

import Store from "../../../index"


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

Then(/^o desconto deve ser de "([^"]*)"$/, (args1) => {
	return true;
});
