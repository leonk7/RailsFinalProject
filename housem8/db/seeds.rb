# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[["Southside Summer Sublet"], ["Live in a Castle!!"],["Fun in the Units"],["Live in Beautiful Northside"]].each do |title|
	Listing.create(
		title: title,
		description: "Awesome room!",
		address:"1938 Oski Bear Way",
		price:1868,
		lease_term:"1 year",
	) 
end

[["Michelle", "F"], ["Emily", "F"], ["Leon", "M"], ["Jess", "F"]].each do |name, gender|
	HouseOwner.create(
		name: name,
		email: name+"@housem8.com",
		gender: gender,
		password: "password",
	)
end