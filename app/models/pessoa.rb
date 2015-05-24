class Pessoa < ActiveRecord::Base
    belongs_to :familum

    validates_presence_of :nome, :tipo, :sexo, :data_nascimento, :papel, :nacionalidade, :raca, :estado_civil, :ocupacao, :familium_id
end
