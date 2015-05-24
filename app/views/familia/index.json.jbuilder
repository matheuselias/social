json.array!(@familia) do |familium|
  json.extract! familium, :id, :nome, :tipo, :inforcacoes, :renda
  json.url familium_url(familium, format: :json)
end
