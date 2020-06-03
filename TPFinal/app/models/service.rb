class Service < ApplicationRecord
	has_one :car

	validates :from, presence: true

	validate :calculate_to

	def calculate_to
		to = from + 5
		to
	end
end
