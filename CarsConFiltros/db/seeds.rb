# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.populate 20 do |c|
	c.model = Faker::Vehicle.model
	c.year = 1990..2020 #Faker::Vehicle.year 
	c.doors = 3..5
	c.color = Faker::Vehicle.color
end

Brand.populate 10 do |b|
	b.name = Faker::Vehicle.manufacture
	b.foundation = Faker::Date.between(from: 100.years.ago, to: Date.today)
end