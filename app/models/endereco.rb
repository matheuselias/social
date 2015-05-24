class Endereco < ActiveRecord::Base
    belongs_to :familia
    validates_presence_of :tipo, :endereco, :cidade, :bairro, :estado, :numero, :cep, :familium_id
end
