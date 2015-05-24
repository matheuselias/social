class AddFamiliaIdToEnderecos < ActiveRecord::Migration
  def change
    add_reference :enderecos, :familium, index: true, foreign_key: true
  end
end
