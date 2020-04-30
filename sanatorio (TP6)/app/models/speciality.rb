class Speciality < ApplicationRecord
	has_many :specialities

	validates :name, :charge, :presence => true
	validates :charge, :numericality => true
	validates :charge, numericality: { greater_than: 0 }
end
