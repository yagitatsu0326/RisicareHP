class HomesController < ApplicationController
	def top
		@informations = Information.order(created_at: :desc).limit(4).order(created_at: :desc)
        @events = Event.where("start_time > ?",Date.today).order(start_time: :asc).limit(7)

	end

	def about
	end
end
