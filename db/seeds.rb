# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(fullname: 'User')
Car.create(name: 'Toyota Corolla', price: 1000, ratings: 5, image: 'https://i.pinimg.com/564x/ac/06/2b/ac062bb62fe79b9642c73efdc6fbcdf8.jpg', description: 'In this house, we love Toyotas. Especially the Corolla, which boasts top spots on virtually every “best rentals” list—and for good reason. With a generous 29 city / 37 highway miles to the gallon, 88.6 cubic feet of passenger space, and enough room to seat five passengers comfortably, it’s a capable choice for just about any situation.', user_id: 1)
Car.create(name: 'Toyota Prius', price: 800, ratings: 4, image: 'https://i.pinimg.com/564x/e1/a2/ef/e1a2ef0f2f408561dece6e357f5fde3b.jpg', description: 'Looking for a fuel-savvy traveler? There’s no better option than the Toyota Prius. With a renowned EPA rating of 54 city / 50 highway miles per gallon, you’ll be hard-pressed to find a rental that saves you more on gas money—especially in the city. Its hybrid powertrain isn’t just a fuel-sipper, though—with nimble steering and suspension, it’s also a breeze to drive.', user_id: 1)
Favourite.create(user_id: 1, car_id: 1)
