class HomesController < ApplicationController
	def top
		@informations = Information.order(created_at: :desc).limit(15).order(created_at: :desc)
		@current_time = Time.zone.now
        @events = Event.where("start_time > ?",Date.today).order(start_time: :asc).limit(7)

	end

	def club
	end
end
