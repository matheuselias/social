class CreateFamilia < ActiveRecord::Migration
  def change
    create_table :familia do |t|
      t.string :nome
      t.string :tipo
      t.text :inforcacoes
      t.decimal :renda

      t.timestamps null: false
    end
  end
end
