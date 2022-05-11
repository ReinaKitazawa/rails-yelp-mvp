# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

yoshinoya = { name: "Yoshinoya", address: "Ebisu", category: "japanese"}
jiro = { name: "Jiro", address: "Meguro", category: "french"}
cocos = { name: "Cocos", address: "Shibuya", category: "italian"}
sushiro = { name: "Sushiro", address: "Asakusa", category: "japanese"}
osho = { name: "Osho", address: "Meguro", category: "chinese"}

[yoshinoya, jiro, cocos, sushiro, osho].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
