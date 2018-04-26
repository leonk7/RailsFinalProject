# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[["Southside Summer Sublet", "Awesome fully furnished single", "1235 Channing Way", 900, "May-Aug"], 
["Live in a Castle!!", "Spacious double available in Bowles; food included", "1928 Stadium Rim Way", 1800, "Jan-May"],
["Fun in the Units", "Open spot in a triple in Unit 1; includes food", "2650 Durant Ave, Cheney", 1400, "Aug - Jun"],
["Live in Beautiful, Quiet Northside", "Converted living room single", "1273 Le Roy Ave", 1100, "Aug-Dec"]].each do |title, description, address, price, term|
	Listing.create(
		title: title,
		description: description,
		address:address,
		price:price,
		lease_term:term,
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