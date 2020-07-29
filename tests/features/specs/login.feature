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

  