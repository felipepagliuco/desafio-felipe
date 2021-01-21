Dado('o endereço da API para manter o cadastro de Peixes') do
  $uri_base = "https://6008f7120a54690017fc2796.mockapi.io/pesca/peixes"
end

# Cenário: Buscar todos os peixes cadastrados >>

Quando('realizar a requisição') do
  $response = HTTParty.get($uri_base,)
end

Então('a api retorna todos os peixes cadastrados respondendo com código {int}') do |int|
  expect($response.code).to eq(int)
end

# Cenário: Cadastrar um novo peixe >>

Quando('realizar uma requisição para cadastrar um peixe') do
  $response = @peixe.postPeixe
end

Então('a API irá retornar os dados do cadastro de Peixe respondendo o código {int}') do |int|
  #Verifica status code e message
  expect($response.code).to eq(int)
  log("Response code: #{$response.code}")
  expect($response.message).to eq("Created")
  log("Response Message: #{$response.message}")

  #imprime os atributos da requisição
  log("ID    : #{$response["id"]}")
  log("Data  : #{$response["createdAt"]}")
  log("Nome  : #{$response["nome"]}")
  log("Especie : #{$response["especie"]}")

  $id = $response["id"]
end

#Cenário: Alterar os dados de um peixe cadastrado >>

Quando('realizar uma requisição para alterar um peixe') do
  $put = @peixe.putPeixe($id)
end

Então('a API irá retornar os dados do peixe alterados respondendo o código {int}') do |int|
  expect($put.code).to eq(int)
  expect($put.message).to eq("OK")
  expect($put["id"]).to eq($response["id"])
end

# Cenário: Deletar um peixe >>

Quando('realizar uma requisição para excluir um peixe') do
  $delete = @peixe.deletePeixe($id)
end

Então('a API deverá retornar os dados da exclusão respondendo o código {int}') do |int|
  expect($delete.code).to eq(int)
  expect($delete.message).to eq("OK")
  log("ID    : #{$delete["id"]}")
  log("Data  : #{$delete["createdAt"]}")
  log("Nome  : #{$delete["nome"]}")
  log("Especie : #{$delete["especie"]}")
end

