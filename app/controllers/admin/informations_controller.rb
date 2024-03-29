class Admin::InformationsController < ApplicationController

	before_action :authenticate_admin!

	def new
		@information = Information.new
	end

	def create
		@information = Information.new(information_params)
		@information.admin_id = current_admin.id
		if @information.save
			redirect_to informations_path
		else
			render 'new'
		end

	end

	def index
		@informations = Information.all.page(params[:page]).per(12).order(created_at: :desc)
	end

	def show
		@information = Information.find(params[:id])
	end

	def edit
		@information = Information.find(params[:id])
	end

	def update
		@information = Information.find(params[:id])
		@information.admin_id = current_admin.id
		if @information.update(information_params)
			redirect_to informations_path
		else
			render 'edit'
		end
	end

	def destroy
		@information = Information.find(params[:id])
		@information.destroy
		redirect_to informations_path
	end

	private
	def information_params
		params.require(:information).permit(:title,:body,:image)
	end

end
