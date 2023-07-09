# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(fullname: 'User')
Car.create(name: 'Toyota Corolla', price: 2000, ratings: 5, image: 'https://i.pinimg.com/564x/ac/06/2b/ac062bb62fe79b9642c73efdc6fbcdf8.jpg', description: 'In this house, we love Toyotas. Especially the Corolla, which boasts top spots on virtually every “best rentals” list—and for good reason. With a generous 29 city / 37 highway miles to the gallon, 88.6 cubic feet of passenger space, and enough room to seat five passengers comfortably, it’s a capable choice for just about any situation.', user_id: 1)
Car.create(name: 'Toyota Prius', price: 1800, ratings: 4, image: 'https://i.pinimg.com/564x/e1/a2/ef/e1a2ef0f2f408561dece6e357f5fde3b.jpg', description: 'Looking for a fuel-savvy traveler? There’s no better option than the Toyota Prius. With a renowned EPA rating of 54 city / 50 highway miles per gallon, you’ll be hard-pressed to find a rental that saves you more on gas money—especially in the city. Its hybrid powertrain isn’t just a fuel-sipper, though—with nimble steering and suspension, it’s also a breeze to drive.', user_id: 1)
Car.create(name: 'Kia Sorento', price: 1850, ratings: 4, image: 'https://i.pinimg.com/564x/c7/3a/0e/c73a0ece8706e120be48613a4a98cf5a.jpg', description: "Though this Kia's ride quality is on the firm side, it's comfortable, especially at highway speeds. Plus, it's always wise to save money on gas. The Sorento offers excellent fuel economy for a midsize SUV, returning up to 24 mpg in city driving and 29 mpg on the highway. Kia's Sorento tows up to 3,500 pounds. That tow rating is below average for a midsize SUV, so it's something to remember if you plan on using your rental vehicle to pull a boat or trailer.", user_id: 1)
Car.create(name: 'Nissan Rogue', price: 1600, ratings: 3, image: 'https://i.pinimg.com/564x/cc/56/db/cc56db5da6936c931a7779ca88f564f9.jpg', description: "Small SUVs are great choices if you need a rental vehicle for city travel. The Nissan Rogue is a compact SUV with ample room for passengers. The seats are soothing and there's room for adults to stretch their legs in both rows. Also, this Nissan has generous cargo room for a vehicle in this class, with up to 36.5 cubic feet behind the rear seats and 74.1 cubic feet behind the first row.", user_id: 1)
Favourite.create(user_id: 1, car_id: 1)
