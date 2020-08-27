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

# mondays_list = Grocery.create(grocery_item: "Salt", qty: 2, notes: "Coarse", market_id: 1)

5.times do 
  Grocery.create({grocery_item: Faker::Food.vegetables, qty: Faker::Number.between(from: 1, to: 10), notes: Faker::Food.description, market_id: 3})
end

# 5.times do 
#   Appointment.create({appointment_time: "October 15, 2020 10:48 AM", student_id: 1, tutor_id: 1})
#   student = Student.create({username: Faker::Internet.username, email: Faker::Internet.unique.email, password: "password"})
#   tutor = Tutor.create({name: Faker::Name.unique.name, years_exp: "7", SME: Faker::Educator.subject})
# end