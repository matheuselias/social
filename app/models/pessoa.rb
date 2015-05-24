class Pessoa < ActiveRecord::Base
    validates_presence_of :nome, :tipo, :sexo, :data_nascimento, :papel, :nacionalidade, :raca, :estado_civil, :ocupacao, :responsavel
end
