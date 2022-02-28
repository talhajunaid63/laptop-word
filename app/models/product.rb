class Product < ApplicationRecord
	has_many_attached :images
	validates :title, presence: true
	validates :description, presence: true
	validates :price, presence: true
	validate :image_type

	private
	 def image_type
	 	if images.attached? ==false
	 		errors.add(:images, " are missing")
	 	end
	 end
	end
