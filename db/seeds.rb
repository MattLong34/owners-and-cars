# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Owner.destroy_all
Car.destroy_all

matt = Owner.create({name: "Matt", age: 27})
brian = Owner.create({name: "Brian", age: 30})

tesla = Car.create({make: "Tesla", model: "Model 3", color: "red", year: 2020, owner: matt})
honda = Car.create({make: "Honda", model: "Accord", color: "blue", year: 1999, owner: brian})

