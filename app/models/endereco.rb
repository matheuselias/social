class Endereco < ActiveRecord::Base

     validates_presence_of :tipo, :endereco, :cidade, :bairro, :estado, :numero, :cep
end
