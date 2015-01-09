class HomeController < ApplicationController
  def index
	@imovels = Imovel.selecionarImoveis(params[:imovel])

	if params[:imovel].nil?
		@imovel = Imovel.new
	else
		@imovel = Imovel.new(imovel_params)
	end	
	  respond_to do |format|
	    format.html
	  end
  end
end
