# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
kfc = { name: "Kfc", address: "5 Boundary St, London E2 7JE", category: "chinese" }
subway = { name: "Subway", address: "11 Boundary St, London E2 7JE", category: "japanese" }
pub = { name: "Pub", address: "35 Boundary St, London E2 7JE", category: "belgian" }

[ dishoom, pizza_east, kfc, subway, pub ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  # create is going to return true or false
  # create! is going to return true or the errors

  #   restaurant = Restaurant.new(attributes)
  #   restaurant.save!

  puts "Created #{restaurant.name}"
end

puts "Finished!"