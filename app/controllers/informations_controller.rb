class InformationsController < ApplicationController
	def index
		@informations = Information.all.page(params[:page]).per(1)
	end

	def show
		@information = Information.find(params[:id])
	end

end
