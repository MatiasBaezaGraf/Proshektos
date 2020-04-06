class Structure < ApplicationRecord
	has_many :car

	validates :name, presence: :true
	validates :name, length: { maximum: 100 }
end
