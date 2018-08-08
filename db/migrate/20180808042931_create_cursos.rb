class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :descricao
      t.string :nivelEscolaridade
      t.integer :quantidadePeriodo

      t.timestamps
    end
  end
end
