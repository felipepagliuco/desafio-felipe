Before '@peixe' do
  @nome = Faker::FunnyName.name
  @especie = Faker::FunnyName.name

  @body = {
    "nome": @nome,
    "especie": @especie
  }

  @peixe = Peixe.new(@body)

end

