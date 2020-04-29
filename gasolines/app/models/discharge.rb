class Discharge < ApplicationRecord
	belongs_to :station
	belongs_to :load

	validates :liters, :date, :station_id, :load_id, presence: :true
	validates :liters, numericality: :true

	validate :loaded_truck
	validate :station_liters

	def loaded_truck
		if load.truck.liters_load < liters
			self.errors[:truck_id] << "The selected truck does not have the amount of liters you are requesting"
		end
	end

	def station_liters
		if station.loaded_liters < liters
			self.errors[:station_id] << "The service station does not have the needed capatiy"
		end
	end

end
