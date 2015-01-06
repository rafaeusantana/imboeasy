class Imovel < ActiveRecord::Base
  belongs_to :tipo_imovel
  belongs_to :estado
end
