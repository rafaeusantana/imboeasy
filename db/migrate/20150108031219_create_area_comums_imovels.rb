class CreateAreaComumsImovels < ActiveRecord::Migration
  def change
    create_table :area_comums_imovels do |t|
      t.integer :area_comum_id
      t.integer :imovel_id
    end
  end
end
