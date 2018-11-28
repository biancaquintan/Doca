class AddObservacaoToPedidos < ActiveRecord::Migration[5.2]
  def change
    add_column :pedidos, :observacao, :text
  end
end
