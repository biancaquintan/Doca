class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos do |t|
      t.string :nome
      t.string :matricula
      t.string :pasta
      t.string :periodo
      t.string :turno
      t.string :anoLetivo
      t.string :telefone
      t.string :celular
      t.string :email
      t.text :finalidadePedido
      t.string :type
      t.references :curso, foreign_key: true
      t.references :situacao, foreign_key: true

      t.timestamps
    end
  end
end
