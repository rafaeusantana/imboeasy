class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string "nome",   limit: 50, null: false
      t.string "sigla", limit: 2, null: false
    end
  end
end
