class AddForeignKeyToAreaComumsImovels < ActiveRecord::Migration
  def change
    add_foreign_key :area_comums_imovels, :area_comums
    add_foreign_key :area_comums_imovels, :imovels
  end
end
