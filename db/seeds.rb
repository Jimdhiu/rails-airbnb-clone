# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


cat = Category.create(name: "Catamaran")
sport = Category.create(name: "Waterpsorts")
opt = Category.create(name: "Optimiste")
semi = Category.create(name: "Semi-rigide")
voile = Category.create(name: "Voilier")
rigide = Category.create(name: "Rigide motorisé")
yatch = Category.create(name: "Yatch")

dexter = User.create(email: "dexter@slice.com", password: "Galopine56" )
jorge = User.create(email: "jorge@surferfacile.com", password: "Bagarre93" )
michel = User.create(email: "michel@michel.com", password: "Ald5pex" )
jimmy = User.create(email: "jimmy-ceo@fileon.com", password: "Porsche911" )
adrien = User.create(email: "adrien@poesie.com", password: "Duculetdesseins69" )
mathieu = User.create(email: "mathieu@monterauxarbres.com", password: "Coupertailler" )
sangohan = User.create(email: "sangohan@japan-university.com", password: "Ultimategohan" )


slice =  Boat.create(name: "Slice of life", description: "ideal for quiet murder", category: cat, user: dexter, address: "Miami", capacity: 3, price: 500.00, caution: 2000, size: 9.35, horse_power: 200.00  )
wake =  Boat.create(name: "Wake Paradise", description: "fastest sport boat for skilled wakeboarders", category: sport, user: jorge, address: "Biarritz", capacity: 5, price: 1000.00, caution: 4000, size: 8.5, horse_power: 500.00)
mich =  Boat.create(name: "Belgium terror", description: "Ideal for belgium billionaires looking for russian models", category: opt, user: michel, address: "Miami", capacity: 2, price: 10000.00, caution: 50000, size: 1.35, horse_power: 0.00)
abs =  Boat.create(name: "Abus de bien social", description: "For compagny trips with nice employees", category: semi, user: jimmy, address: "Bordeaux", capacity: 8, price: 800.00, caution: 2000, size: 15.35, horse_power: 400.00)
nichons =  Boat.create(name: "Gros tétés", description: "Partouze en pleine mer", category: voile, user: adrien, address: "Miami", capacity: 20, price: 7000.00, caution: 200000, size: 20.35, horse_power: 2000.00)
criques =  Boat.create(name: "Creek explorer", description: "Pour la pèche en famille et l'exploration des criques", category: rigide, user: mathieu, address: "France", capacity: 5, price: 500.00, caution: 2000, size: 10.35, horse_power: 300.00)
futur =  Boat.create(name: "Univers explorer", description: "Voyager à travers l'univers", category: yatch, user: sangohan, address: "Miami", capacity: 30, price: 15000.00, caution: 200000, size: 40.35, horse_power: 70000.00)
