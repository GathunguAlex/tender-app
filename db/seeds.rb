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



# 10.times{Tender.create()} when using faker

user = User.create([{username: "admin", password: "admin", password_confirmation: "admin"}])
user1 =User.create([{username: "user1", password: "user1", password_confirmation: "user1"}])
user2 =User.create([{username: "user2", password: "user2", password_confirmation: "user2"}])
user3 =User.create([{username: "user3", password: "user3", password_confirmation: "user3"}])

tenders1 = Tender.create([{tendername: "Roads", tendernumber: 1, users_id: 1}])
tenders2 = Tender.create([{tendername: "School", tendernumber: 2, users_id: 2}])
tenders3 = Tender.create([{tendername: "Hospital", tendernumber: 3, users_id: 3}])
