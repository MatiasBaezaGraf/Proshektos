class SocialWork < ApplicationRecord
	has_many :patients

	validates :name, :discount, :presence => true
	validates :discount, :numericality => true
	validates :discount, numericality: { greater_than: 0 }
end
