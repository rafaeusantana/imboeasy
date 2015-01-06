class CreateTipoImovels < ActiveRecord::Migration
  def change
    create_table :tipo_imovels do |t|
      t.string "nome",   limit: 50, null: false
    end
  end
end
