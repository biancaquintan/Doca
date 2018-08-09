class CreateSituacoes < ActiveRecord::Migration[5.2]
  def change
    create_table :situacoes do |t|
      t.string :descricao
      t.text :observacao

      t.timestamps
    end
  end
end
