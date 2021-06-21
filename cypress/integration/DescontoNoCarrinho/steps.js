/// <reference types="cypress" />
import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

import Store from "../../../index"


Given(/^que o carrinho está vazio$/, () => {
	Store.resetCart();
});

Given(/^que adicionam uma unidade do filme "([^"]*)" no carrinho$/, (nomeDoFilme) => {
	Store.addMovieNameToCart(nomeDoFilme);
});

When(/^o lojista checa o desconto que pode conceder$/, () => {
	return true;
});

Then(/^o desconto deve ser de "([^"]*)"$/, (args1) => {
	return true;
});
