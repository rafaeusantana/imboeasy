class CreateAreaComums < ActiveRecord::Migration
  def change
    create_table :area_comums do |t|
      t.string "nome", limit: 50
    end
  end
end
