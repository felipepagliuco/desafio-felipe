#language: pt
  @peixe
  Funcionalidade: CRUD Peixes através da API
    Como um usuário do app
    Eu quero realizar as requisições na API de Pesca
    A fim de manipular e buscar as informações do cadastro de Peixes

    Cenário: Buscar todos os peixes cadastrados
      Dado o endereço da API para manter o cadastro de Peixes
      Quando realizar a requisição
      Então a api retorna todos os peixes cadastrados respondendo com código 200

    Cenário: Cadastrar um novo peixe
      Dado o endereço da API para manter o cadastro de Peixes
      Quando realizar uma requisição para cadastrar um peixe
      Então a API irá retornar os dados do cadastro de Peixe respondendo o código 201

    Cenário: Alterar os dados de um peixe cadastrado
      Dado o endereço da API para manter o cadastro de Peixes
      Quando realizar uma requisição para alterar um peixe
      Então a API irá retornar os dados do peixe alterados respondendo o código 200

    Cenário: Deletar um peixe
      Dado o endereço da API para manter o cadastro de Peixes
      Quando realizar uma requisição para excluir um peixe
      Então a API deverá retornar os dados da exclusão respondendo o código 200
