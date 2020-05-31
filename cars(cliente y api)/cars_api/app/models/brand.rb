class Brand < ApplicationRecord
	validates :name, presence: :true
	validates :foundation, presence: :true
end
