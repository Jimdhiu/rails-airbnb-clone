# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
puts "Destroy all Bookings"
puts "----------------------"
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

options_string = ["frigo", "", "turbo boost", "bouteille de champagne",
"four", "équipe de rameur", "Laure Manaudou"]
options_object = []
options_string.each do |option|
  options_object << Option.create(name: options_string.sample)
end
puts "Options created !"
puts "-----------------"



  first_name = "Jean-Pierre"
  last_name = "Durand"
  user = User.create(first_name: first_name , last_name: last_name,
              email: "#{first_name}.#{last_name}@gmail.com",
              password: "password", status: "host")
  p user

  boat = Boat.create(name: "Flint", description: "Bateau rapide, facile à manier, idéal pour le sport",
                    user: user,
                    address: "Arcachon, France",
                    capacity: 7,
                    price: 500,
                    caution: 4000,
                    size: 10,
                    horse_power: 500,
                    category: moteur)

  BoatOption.create(boat: boat, option: options_object.sample)


  p boat



  Booking.create(user: user, boat: boat)


puts "$$$$$$$$$$$$$$$$$ YEAH !!! $$$$$$$$$$$$$$$$$$$$$"
