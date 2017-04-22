class Pin < ApplicationRecord
	
	belongs_to :user
	belongs_to :category
	validates :description, presence: true
	validates :name, presence: true
	validates :category, presence: true
	mount_uploader :photo, PhotoUploader
	
end
