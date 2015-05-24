class Familium < ActiveRecord::Base
    has_many :pessoas
    has_one :endereco
    validates_presence_of :nome, :tipo
end
