class Serie < ApplicationRecord
	has_many :seasons
	belongs_to :genre

	
end
