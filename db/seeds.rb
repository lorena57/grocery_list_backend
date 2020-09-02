# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# safeway = Market.create(name: "Safeway")
# albertsons = Market.create(name: "Albertsons")
# wholefoods = Market.create(name: "Whole Foods")
# winco = Market.create(name: "Winco")

# mondays_list = Grocery.create(grocery_item: "Salt", qty: 2, notes: "Coarse", market_id: 1)

# 5.times do 
#   Grocery.create({grocery_item: Faker::Food.vegetables, qty: Faker::Number.between(from: 1, to: 10), notes: Faker::Food.description, market_id: 3})
# end

# 5.times do 
#   Appointment.create({appointment_time: "October 15, 2020 10:48 AM", student_id: 1, tutor_id: 1})
#   student = Student.create({username: Faker::Internet.username, email: Faker::Internet.unique.email, password: "password"})
#   tutor = Tutor.create({name: Faker::Name.unique.name, years_exp: "7", SME: Faker::Educator.subject})
# end

daily_life = Market.create(name: "Daily Life")
self_care = Market.create(name: "Self Care")
goal_setting = Market.create(name: "Goal Setting")

post1 = Grocery.create(market_id: self_care.id, groceryItem: "I am grateful for having a loving family and being in perfect health.", qty: 2, notes: "Today could have been better if I would have read my book.")
post2 = Grocery.create(market_id: self_care.id, groceryItem: "I am grateful for waking up this morning.", qty: 2, notes: "Today could have been better if I would have ran today.")
post3 = Grocery.create(market_id: self_care.id, groceryItem: "I am grateful for my parents.", qty: 9, notes: "Today could have been better if I would have stayed home.")

post4 = Grocery.create(market_id: goal_setting.id, groceryItem: "Exercising for 30 minutes today.", qty: 8, notes: "My inspiration for today is connecting with nature.")