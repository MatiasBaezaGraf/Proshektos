class Brand < ApplicationRecord
	has_many :cars

	validates :name, presence: :true
	validates :name, length: { maximum: 100 }
end
