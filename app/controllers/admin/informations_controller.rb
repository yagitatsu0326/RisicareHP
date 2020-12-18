class Admin::InformationsController < ApplicationController
	def new
		@information = Information.new
	end

	def create
		@information = Information.new(information_params)
		@information.admin_id = current_admin.id
		if @information.save
			redirect_to admin_informations_path
		else
			render 'new'
		end

	end

	def index
		@informations = Information.all
	end

	def show
		@information = Information.find(params[:id])
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def information_params
		params.require(:information).permit(:title,:body,:image)
	end

end
