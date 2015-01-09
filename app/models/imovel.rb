class Imovel < ActiveRecord::Base
  belongs_to :tipo_imovel
  belongs_to :estado
  has_many :area_comums_imovels
  has_many :area_comums, :through => :area_comums_imovels
  mount_uploaders :fotos, FotoUploader

  def self.selecionarImoveis(params)
    if !params.present? || (!params[:bairro].present? && !params[:cidade].present? && !params[:estado_id].present?)
      Imovel.all
    else
     @imovels=Imovel.by_bairro(params[:bairro]).by_cidade(params[:cidade]).by_estado_id(params[:estado_id])
    end
  end

  def self.by_bairro(param)
    return where(nil) unless param.present?
    where(["lower(bairro) LIKE lower(?)", "%"+param+"%"])
  end

  def self.by_cidade(param)
    return where(nil) unless param.present?
    where(["lower(cidade) LIKE lower(?)", "%"+param+"%"])
  end

  def self.by_estado_id(param)
    return where(nil) unless param.present?
    where(["estado_id = ?", param])
  end

end
