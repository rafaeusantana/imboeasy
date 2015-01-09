require "rails_helper"

RSpec.describe Imovel, :type => :model do
  it "Cadastro de imóveis" do
    imovel = Imovel.create!(cidade: "São Paulo", endereco: "Av. Paulista, 300", descricao: "Um lindo apartamento!", qtd_quartos: 3, metragem: 60, vagas_auto: 1, valor_venda: 600000, valor_aluguel: 2000, valor_condominio: 1200, tipo_imovel_id: 1, estado_id: 1, qtd_suites: 1, ano_construcao: 1980, bairro: "Jardim Paulista")

    expect(Imovel.where(:endereco => "Av. Paulista, 300")[0]).to eq(imovel)
  end
end
