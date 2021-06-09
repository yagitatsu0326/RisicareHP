class Information < ApplicationRecord
	belongs_to :admin
	attachment :image

	validates :title, presence: true, length: { maximum: 255 }
	validates :body, presence: true
	validates :image, presence: true
end
