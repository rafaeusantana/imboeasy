class Imovel < ActiveRecord::Base
  belongs_to :tipo_imovel
  belongs_to :estado
  has_many :area_comums_imovels
  has_many :area_comums, :through => :area_comums_imovels
  mount_uploaders :fotos, FotoUploader
end
