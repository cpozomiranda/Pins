class Category < ApplicationRecord
	has_many :pins, dependent: :destroy
end
