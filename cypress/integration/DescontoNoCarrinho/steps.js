/// <reference types="cypress" />
import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

Given(/^que o carrinho está vazio$/, () => {
	return true;
});

Given(/^que adicionam uma unidade do filme "([^"]*)" no carrinho$/, (nomeDoFilme) => {
	return true;
});

When(/^o lojista checa o desconto que pode conceder$/, () => {
	return true;
});

Then(/^o desconto deve ser de "([^"]*)"$/, (args1) => {
	return true;
});
