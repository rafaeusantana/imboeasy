require "rails_helper"

RSpec.describe ImovelsController, :type => :controller do
  describe "GET #index" do
    it "responde com código de status HTTP 200" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renderiza o template" do
      get :index
      expect(response).to render_template("index")
    end

    it "carrega todos os imóveis em @imovels" do
      imovel1, imovel2 = Imovel.create!(cidade: "São Paulo", endereco: "Av. Paulista, 300", descricao: "Um lindo apartamento!", qtd_quartos: 3, metragem: 60, vagas_auto: 1, valor_venda: 600000, valor_aluguel: 2000, valor_condominio: 1200, tipo_imovel_id: 1, estado_id: 1, qtd_suites: 1, ano_construcao: 1980, bairro: "Jardim Paulista"), Imovel.create!(cidade: "São Paulo", endereco: "Av. Paulista, 400", descricao: "Um lindo apartamento!", qtd_quartos: 3, metragem: 60, vagas_auto: 1, valor_venda: 600000, valor_aluguel: 2000, valor_condominio: 1200, tipo_imovel_id: 1, estado_id: 1, qtd_suites: 1, ano_construcao: 1980, bairro: "Jardim Paulista")
      get :index

      expect(assigns(:imovels)).to match_array([imovel1, imovel2])
    end
  end
end
