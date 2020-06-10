class Service < ApplicationRecord
	belongs_to :car

	validates :from, :kilometers, presence: true

	validate :calculate_to
	validate :is_reserved
	validate :busy

	def calculate_to
		to = from + 5
		to
	end

	def busy
		for s in Service.all
			if (s.car.patent == car.patent)
				if(from > s.from) and (from < s.to)
					errors.add(:date, "error: Starting date is within a service period for the selected car")					
				end

				if(to > s.from) and (to < s.to)
					errors.add(:date, "error: Ending date is within a service period for the selected car")
				end

				if(from <= s.from) and (to >= s.to)
					errors.add(:date, "error: The specified period overlaps with an existing service period")
				end
			end
		end
		from
	end

	def is_reserved
		for r in Reservation.all
			if (r.car.patent == car.patent)
				if(from > r.from) and (from < (r.to + 2))
					errors.add(:date, "error: Starting date is within a reservation period for the selected car")					
				end

				if(to > r.from) and (to < (r.to + 2))
					errors.add(:date, "error: Ending date is within a reservation period for the selected car")
				end

				if(from <= r.from) and (to >= (r.to + 2))
					errors.add(:date, "error: The specified period overlaps with a reservation period for the selected car")
				end
			end
		end
		from
	end

end
