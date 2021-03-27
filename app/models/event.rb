class Event < ApplicationRecord

	belongs_to :admin

	validates :title, presence: true, length: { maximum: 255 }
	validates :body, presence: true, length: { maximum: 255 }
	validates :place, presence: true
	validates :start_time, presence: true
	validates :end_time, presence: true

end
