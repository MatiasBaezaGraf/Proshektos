class Car < ApplicationRecord
	has_many :services
	has_many :reservations

	belongs_to :fuel
	belongs_to :type

	validates :patent, :brand, :model, :price_day, presence: true
	validates :patent, uniqueness: true
	validates :price_day, numericality: true
 		
end
