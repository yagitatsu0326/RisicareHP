class HomesController < ApplicationController
	def top
		@informations = Information.order(created_at: :desc).limit(6).order(created_at: :desc)
        @events = Event.where("start_time > ?",Date.today).order(start_time: :asc).limit(7)

	end

	def club
	end
end
