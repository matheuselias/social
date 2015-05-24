class AddEnquadramentoToFamilia < ActiveRecord::Migration
  def change
    add_column :familia, :enquadramento, :string
  end
end
