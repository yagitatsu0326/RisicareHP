class InformationsController < ApplicationController
	def index
		@informations = Information.order(created_at: :desc).page(params[:page]).per(12)
	end

	def show
		@information = Information.find(params[:id])
	end

end
