class ChangeImovels < ActiveRecord::Migration
  def change
    remove_column :imovels, :tipo
    remove_column :imovels, :estado
    add_column :imovels, :tipo_imovel_id, :integer
    add_column :imovels, :estado_id, :integer, null: false
  end
end
