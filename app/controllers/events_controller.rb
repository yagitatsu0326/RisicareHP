class EventsController < ApplicationController

	def index
		@events = Event.all
		@event = @events.where("start_time > ?",Date.today).order(start_time: :asc).limit(7)

	end

	def show
		@event = Event.find(params[:id])
	end
end
