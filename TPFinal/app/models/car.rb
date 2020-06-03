class Car < ApplicationRecord
	has_many :services
	has_many :reservations

	validates :patent, :brand, :model, :fuel_type, :kilometers_last, :price_day, :need_s, presence: true
	validates :patent, uniqueness: true
	validates :kilometers_last, :price_day, numericality: true
 	
	validate :service_need

	def service_need
		if kilometers_last >= 10000
			need_s = "yes"
		else  
			need_s = "no"
		end
		need_s
	end
end
