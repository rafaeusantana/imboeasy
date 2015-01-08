class AddUserIdToImovels < ActiveRecord::Migration
  def change
    add_column :imovels, :created_by, :integer
    add_foreign_key :imovels, :users, column: 'created_by'
  end
end
