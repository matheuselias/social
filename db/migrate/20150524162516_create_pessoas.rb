class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :tipo
      t.string :sexo
      t.date :data_nascimento
      t.string :telefone
      t.string :papel
      t.string :nacionalidade
      t.string :raca
      t.string :estado_civil
      t.string :ocupacao
      t.decimal :salario
      t.text :informacoes
      t.boolean :responsavel

      t.timestamps null: false
    end
  end
end
