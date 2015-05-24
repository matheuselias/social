class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :tipo
      t.string :endereco
      t.string :cidade
      t.string :bairro
      t.string :estado
      t.integer :numero
      t.string :cep
      t.string :telefone

      t.timestamps null: false
    end
  end
end
