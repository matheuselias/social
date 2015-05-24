json.array!(@enderecos) do |endereco|
  json.extract! endereco, :id, :tipo, :endereco, :cidade, :bairro, :estado, :numero, :cep, :telefone
  json.url endereco_url(endereco, format: :json)
end
