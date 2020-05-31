class Brand < ActiveResource::Base
	self.site = "http://localhost:3001"

	has_many :cars

	validates :name, presence: :true
end

