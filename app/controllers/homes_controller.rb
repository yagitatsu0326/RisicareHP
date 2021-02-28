class HomesController < ApplicationController
	def top
		@informations = Information.order(created_at: :desc).limit(4).order(created_at: :desc)
	end

end
