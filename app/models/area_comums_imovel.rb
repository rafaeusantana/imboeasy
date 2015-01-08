class AreaComumsImovel < ActiveRecord::Base
  belongs_to :area_comum
  belongs_to :imovel
end
