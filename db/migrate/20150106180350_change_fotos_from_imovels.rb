class ChangeFotosFromImovels < ActiveRecord::Migration
  def change
    remove_column :imovels, :fotos
    add_column :imovels, :fotos, :json
  end
end
