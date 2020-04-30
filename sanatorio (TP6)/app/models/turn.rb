class Turn < ApplicationRecord
	belongs_to :medic
	belongs_to :patient

	validates :price, :date, :medic_id, :patient_id, :presence => true
	validates :price, :numericality => true
	validates :price, numericality: { greater_than: 0 }

	validate :calculate_discount
	validate :time_turn

	def calculate_discount
		if medic.speciality.charge < patient.social_work.discount
			t = 0
		else
			t = medic.speciality.charge  - patient.social_work.discount
		end
		t 
	end

	def time_turn
        for t in Turn.all
            if  (t.date.year == date.year) and (t.date.month == date.month) and (t.date.day == date.day) and (t.date.hour == date.hour) and  (t.date.min == date.min)
            	if (t.medic == medic) and (t.patient == patient)
            		errors.add(:date, "The selected PATIENT and MEDIC have that date and time combination already scheduled")
            	elsif (t.medic == medic)
                	errors.add(:date, "The selected MEDIC is busy in the selected date and time")
                elsif (t.patient == patient)
                	errors.add(:date, "The selected PATIENT is busy in the selected date and time")
                end
            end

            if (date < Time.now) 
            	errors.add(:date, "The selected date and time has already passed")
            	break
			end
        end
        date
    end

end
