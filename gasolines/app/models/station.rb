class Station < ApplicationRecord
	has_many :discharges

	validates :adress, :flag, :max_liters, presence: :true
	validates :max_liters, numericality: :true

	def loaded_liters
		liters = 0
		discharges.each do | d |
			liters = d.liters
		end
		liters
	end

	def remaining_liters
		max_liters - loaded_liters
	end
end
