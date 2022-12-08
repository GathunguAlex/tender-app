# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#After seeding,comment out to avoid dublicates
#run rake db: seed
#confirm seeding by running rails c and using class methods like .all, .length
#control del to exit rails c or "exit"

#Tenders.destroy_all

#tenders = Tender.create([{tendername: "Roads", tendernumber: 2}])

# 10.times{Tender.create()} when using faker

user = User.create([{kra_pin: 12345678, cellphone_number: 123456789}])