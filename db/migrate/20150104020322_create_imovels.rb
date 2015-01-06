class CreateImovels < ActiveRecord::Migration
  def change
    create_table :imovels do |t|
      t.string "cidade",   limit: 50
      t.string "endereco", limit: 100, null: false
      t.string "estado",   limit: 2, null: false
      t.string "descricao",   limit: 50
      t.integer "tipo"
      t.integer "qtd_quartos"
      t.integer "metragem"
      t.integer "vagas_auto"
      t.decimal "valor_venda"
      t.decimal "valor_aluguel"
      t.decimal "valor_condominio"
    end
  end
end
