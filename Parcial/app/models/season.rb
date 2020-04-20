class Season < ApplicationRecord
	belongs_to :serie
	belongs_to :program
	has_many :episodes

	validates :number, presence: :true
end
