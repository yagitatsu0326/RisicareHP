class Admin::EventsController < ApplicationController

	before_action :authenticate_admin!

	def new
		@event =Event.new
	end

	def create
		@event =Event.new(event_params)
		@event.admin_id = current_admin.id
		if @event.save
			redirect_to events_path
		else
			render 'new'
		end
	end

	def index
		@events =Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		@event.admin_id = current_admin.id
		if @event.update(event_params)
			redirect_to events_path
		else
			render 'edit'
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_path
	end

	private
	def event_params
		params.require(:event).permit(:title,:body,:place,:start_time,:end_time)
	end

end
