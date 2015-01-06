class ChangeDescricaoFromImovels < ActiveRecord::Migration
  def change
	change_table :imovels do |t|
	  t.change :descricao, :text
	end
  end
end
