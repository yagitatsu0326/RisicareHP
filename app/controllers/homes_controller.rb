class HomesController < ApplicationController
	def top
		@informations = Information.order(created_at: :desc).limit(3)
	end

end
