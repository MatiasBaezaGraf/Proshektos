class Patient < ApplicationRecord
	has_many :turns
	belongs_to :social_work

	validates :name, :dni, :presence => true
	validates :dni, :numericality => true
end
