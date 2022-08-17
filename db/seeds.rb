# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0698459636", category: "belgian" }
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0785423696", category: "italian" }
nobu = {name: "Nobu", address: "903 N La Cienega Blvd, Los Angeles", phone_number: "0636525874", category: "japanese"}
tao = {name: "Tao", address: "3377 S Las Vegas Blvd, Las Vegas", phone_number: "0785412563", category: "french"}
buddha_bar = {name: "Buddha Bar", address: "Grosvenor House Dubai - Al Emreef St - Dubai", phone_number: "0695487563", category: "chinese"}


[dishoom, pizza_east, nobu, tao, buddha_bar].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
