class Car < ApplicationRecord
	belongs_to :brand
	has_and_belongs_to_many :accessories
	belongs_to :classification
	belongs_to :structure  

	validates :doors, :year, :color, :model, :brand_id, presence: :true
	validates :doors, :year, numericality: :true
	validates :year, :color, :model, length: { maximum: 100 }

end
