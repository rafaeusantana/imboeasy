class AreaComum < ActiveRecord::Base
  has_many :area_comums_imovels
  has_many :imovels, :through => :area_comums_imovels
end
