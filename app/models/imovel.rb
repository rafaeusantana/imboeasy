class Imovel < ActiveRecord::Base
  belongs_to :tipo_imovel
  belongs_to :estado
  mount_uploaders :fotos, FotoUploader
end
