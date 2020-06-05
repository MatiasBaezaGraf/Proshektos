class Reservation < ApplicationRecord
	belongs_to :car

	validates :from, :to, :car_id, presence: true
	
	validate :calculate_price
	validate :time_passed
	validate :occupied
	validate :in_service

	def calculate_price
		if payment == "Credit"
			price = ((to - from)*car.price_day)
			price = price + (price*20)/100
		else
			price = ((to - from)*car.price_day)
		end
		price
	end

	def time_passed
		if from == to
			errors.add(:date, "error: Starting and ending days can't be the same")
		end

		if from > to
			errors.add(:date, "error: Ending day can't be earlier than starting day")
		end
		from
	end

	def occupied
		for r in Reservation.all
			if (r.car.patent == car.patent)
				if ((from > r.from) and (from < (r.to + 2)))  
					errors.add(:date, "error: Starting date overlaps with an existing reservation or conditioning period for the selected car")
				end

				if (((to + 2) > r.from) and ((to + 2) < (r.to + 2)))
					errors.add(:date, "error: Ending date overlaps with existing reservation or conditioning period for the selected car")
				end

				if ((from <= r.from) and ((to + 2) >= (r.to + 2)))
					errors.add(:date, "error: The selected perdiod overlaps with an existing reservation or conditioning period for the selected car")
				end
			end
		end
		from
	end

	def in_service
		for s in Service.all
			if(s.car.patent == car.patent)
				if((from > s.from) and (from < s.to))
					errors.add(:date, "error: Starting date is within a service period for the selected car")
				end

				if((to + 2) > s.from) and ((to + 2) < (s.to))
					errors.add(:date, "error: Ending date is within a service period for the selected car")
				end

				if ((from <= s.from) and ((to + 2) >= (s.to)))
					errors.add(:date, "error: The specified perdiod overlaps with a service period for the selected car")
				end
			end
		end
		from
	end
end
