class InformationsController < ApplicationController
	def index
		@informations = Information.all.page(params[:page]).per(12).order(created_at: :desc)
	end

	def show
		@information = Information.find(params[:id])
	end

end
