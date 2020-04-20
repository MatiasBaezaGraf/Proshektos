class Genre < ApplicationRecord
	has_many :series
	has_many :programs

	validates :name, uniqueness: :true
end
