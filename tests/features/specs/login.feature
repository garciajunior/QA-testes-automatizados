# language: pt

Funcionalidade:  Fazer login

-Eu como aluno.
-Eu quero fazer login  na plataforma.
# Dado
# E 
# Quando 
# Entao


@teste 
Cenario: Fazer login com sucesso.
  Dado  que eu tenho um usuario
  |email|xxxxxxxx@hotmail.com|
  |senha|xxxxxxxx|
  Quando eu faço login
  Entao verifico se estou logado.

@teste @masculina @deslogar
Cenario: Entrar na seção correntes
  Dado que estou logado
  E  seleciono a secao corrente 
  E escolho a secao masculina
  Entao verifico se selecionei a seção Correntes Masculinas

@corrente
Cenario: Escolher corrente
  Dado que estou na secao de Correntes Masculinas
  E  seleciono uma corrente
  Quando escolho uma corrente 
  Entao adiciono a corrente no carrinho de compras
@carrinho
Cenario: Carrinho de compra
  Dado que estou no carrinho de compra
  E Insiro um cep
  E  calculo seu valor 
  E seleciono o tipo de entrega Rápido
  E Atualizo Total
  Entao verifico o valor total
  
@esvaziar
Cenario: Cancelar compra
  Dado que estou no carrinho de compra
  E verifico se há algum valor no Subtotal
  Entao esvazio o carrinho
  E Continuo comprando

