class AddFamiliaIdToPessoas < ActiveRecord::Migration
  def change
    add_reference :pessoas, :familium, index: true, foreign_key: true
  end
end
