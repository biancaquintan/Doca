class CreatePedidoAtestados < ActiveRecord::Migration[5.2]
  def change
    create_table :pedido_atestados do |t|

      t.timestamps
    end
  end
end
