class AddTipoToUsuarios < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :tipo, :string
  end
end
