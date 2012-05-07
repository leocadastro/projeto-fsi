# language: pt

Funcionalidade: Gerenciar Projetos
  Para gerenciar projetos
  Como um usuário
  Eu quero criar, ver, editar e apagar um projeto
  
  Cenário: Criar um projeto
    Dado que eu esteja na página inicial do sistema
    Quando eu clicar em Projeto/Novo
    Então eu deveria ver um formulário com os seguintes atributos:
    | atributo      |
    | Nome          |
    | Descrição     |
    | Tipo          |
    | Status        |
    | Início        |
    | Término       |
    | Colaboradores |
    Dado que eu preencha o formulário corretamente
    Quando eu clicar em Criar Projeto
    Então eu deveria ver a mensagem "Projeto Criado com Sucesso!"
    
    localhost:8888/banco_de_dados
