# language: pt

Funcionalidade:  Fazer login

-Eu como aluno.
-Eu quero fazer login  na plataforma.

@deslogar
Cenario: Fazer login com sucesso.
Dado  que eu tenho um usuario
|email|xxxxxxxx@hotmail.com|
|senha|xxxxxxxx|
Quando eu faço login
Entao verifico se estou logado.

Cenario: Entrar na seção masculina
Quando eu clicko na pagina de correntes
E  seleciono correntes masculinas
Entao verifico se estou no item correntes masculinas

Cenario: Escolher corrente
Dado que estou na secao masculina
Quando selecionar uma corrente
Entao verifico se a corrente foi selecionada
E  adiciono ao carrinho

Cenario: Carrinho de compra
Dado que estou no carrinho de compra
Quando Insiro um cep
Entao posso ver o valor do frete
E posso selecionar o tipo de entrega
E clicko em Atualizar Total
E clicko em Finalizar Pedido

Cenario: Metodos de Pagamento
Dado que estou em finalizar Pedido
Quando Clico em selecionar endereço
E seleciono Endereço de cobrança e entrega
E preencho as informações
E Seleciono  a forma de envio
E Seleciono forma de Pagamento em boleto
Entao clico em Finalizar Pedido

