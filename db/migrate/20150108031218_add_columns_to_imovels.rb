class AddColumnsToImovels < ActiveRecord::Migration
  def change
    add_column :imovels, :qtd_suites, :integer
    add_column :imovels, :ano_construcao, :integer
  end
end
