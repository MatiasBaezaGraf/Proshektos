class Episode < ApplicationRecord
	belongs_to :season

	validates :name, presence: :true
	validates :duration, presence: :true
end
