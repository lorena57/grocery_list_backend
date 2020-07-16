# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


safeway = Market.create(name: "Safeway")
albertsons = Market.create(name: "Albertsons")
wholefoods = Market.create(name: "Whole Foods")
winco = Market.create(name: "Winco")

mondays_list = Grocery.create(grocery_item: "Salt", qty: 2, notes: "Coarse", market_id: 1)