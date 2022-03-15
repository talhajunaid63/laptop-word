class Product < ApplicationRecord
	validates :title, presence:true
	validates :description, presence:true
	validates :price, presence: true
	belongs_to :user, :optional => true
	has_many_attached :images
end
