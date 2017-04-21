class Pin < ApplicationRecord
	
	belongs_to :user
	validates :photo, presence: true
	validates :description, presence: true
	validates :name, presence: true
	validates :category, presence: true
	
	
end
