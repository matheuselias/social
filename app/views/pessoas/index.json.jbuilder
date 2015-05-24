json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :id, :nome, :tipo, :sexo, :data_nascimento, :telefone, :papel, :nacionalidade, :raca, :estado_civil, :ocupacao, :salario, :informacoes, :responsavel
  json.url pessoa_url(pessoa, format: :json)
end
