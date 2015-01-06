class AddForeignKeysEstadoTipoImovels < ActiveRecord::Migration
  def change
    add_foreign_key :imovels, :tipo_imovels
    add_foreign_key :imovels, :estados
  end
end
