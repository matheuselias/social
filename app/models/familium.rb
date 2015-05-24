class Familium < ActiveRecord::Base
    validates_presence_of :nome, :tipo
end
