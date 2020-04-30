class Medic < ApplicationRecord
	has_many :turns
	belongs_to :speciality

	validates :name, presence: true
end
