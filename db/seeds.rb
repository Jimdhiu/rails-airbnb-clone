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






100.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  user = User.create(first_name: first_name , last_name: last_name,
              email: "#{first_name}.#{last_name}@gmail.com",
              password: "password", status: ["host", "client"].sample)
  p user
  if user.status == "host"
    boat = Boat.create(name: Faker::DragonBall.character, description: Faker::Lorem.sentence,
                      user: user)
    p boat
  end
end




