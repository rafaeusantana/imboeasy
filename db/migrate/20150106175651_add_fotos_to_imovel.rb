class AddFotosToImovel < ActiveRecord::Migration
  def change
    add_column :imovels, :fotos, :string, limit: 200
  end
end
