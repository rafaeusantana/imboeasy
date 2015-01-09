class AddBairroToImovels < ActiveRecord::Migration
  def change
    add_column :imovels, :bairro, :string, limit: 50
  end
end
