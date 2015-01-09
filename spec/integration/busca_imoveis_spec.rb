require 'rails_helper'

RSpec.describe "busca de imóveis", :type => :request do
  it "exibe os campos de busca quando entra na página de busca" do
    get "/imovels"
    assert_select "form[id=?]", "busca_imoveis" do
      assert_select "input[name=?]", "imovel[bairro]"
      assert_select "input[name=?]", "imovel[cidade]"
      assert_select "select[name=?]", "imovel[estado_id]"
    end

    Imovel.create!(cidade: "São Paulo", endereco: "Av. Paulista, 300", descricao: "Um lindo apartamento!", qtd_quartos: 3, metragem: 60, vagas_auto: 1, valor_aluguel: 2000, valor_condominio: 1200, tipo_imovel_id: 1, estado_id: 1, qtd_suites: 1, ano_construcao: 1980, bairro: "Jardim Paulista")

    get "/imovels", :bairro => "Jardim Paulista", :cidade => "São Paulo"
    assert_select ".valor-pesquisa", :text => "R$ 2000.0"
  end
end
