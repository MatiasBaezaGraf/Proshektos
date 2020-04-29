class Load < ApplicationRecord
	belongs_to :truck
	has_many :discharges

	validates :liters, :date, :liter_amount, :truck_id, presence: :true
	validates :liters, numericality: :true

	validate :full_truck
	validate :full_liters

	def full_truck

		if truck.remaining_liters < liters
			self.errors[:truck_id] << "The truck doesn't have the needed available capacity"
		end

	end

	def full_liters
		if truck.max_liters < liters
			self.errors[:truck_id] << "The given amount of liters is bigger than the truck capacity"
		end
	end

	def discharges_liters
		l = 0
		discharges.each do | dis |
			l = l + dis.liters
		end
		l
	end


end
