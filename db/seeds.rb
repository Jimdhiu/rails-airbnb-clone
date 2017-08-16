# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts "Destroy all Users"
puts "----------------------"
Boat.destroy_all
puts "Destroy all Boats"
puts "----------------------"
Category.destroy_all
puts "Destroy all Categories"
puts "----------------------"


voilier = Category.create(name: "Voilier")
moteur = Category.create(name: "Moteur")
categories = [voilier, moteur]
puts "Categories created !"
puts "--------------------"

options_string = ["frigo", "coque amovible", "turbo boost", "bouteille de champagne",
"four", "équipe de rameur", "Laure Manaudou"]
options_object = []
options_string.each do |option|
  options_object << Option.create(name: options_string.sample)
end
puts "Options created !"
puts "-----------------"


100.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  user = User.create(first_name: first_name , last_name: last_name,
              email: "#{first_name}.#{last_name}@gmail.com",
              password: "password", status: ["host", "client"].sample)
  p user
  if user.status == "host"
    boat = Boat.create(name: Faker::DragonBall.character, description: Faker::Lorem.sentence,
                      user: user,
                      address: ["Arcachon", "Biarritz", "Lorient", "La Rochelle"].sample,
                      capacity: rand(2..15),
                      price: rand(150..500),
                      caution: rand(10..50) * 100,
                      size: rand(3..20),
                      horse_power: rand(9..300),
                      photo: Faker::Placeholdit.image,
                      category: categories.sample )
    rand(3..options_string.size).times do
      BoatOption.create(boat: boat, option: options_object.sample)
    end

    p boat
  else
    boats = Boat.all
    boat = Boat.find(rand(1..boats.size))

    Booking.create(user: user, boat: boat)
  end

end

puts "$$$$$$$$$$$$$$$$$ YEAH !!! $$$$$$$$$$$$$$$$$$$$$"
