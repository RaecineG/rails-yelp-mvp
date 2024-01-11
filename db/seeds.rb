# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clear existing records
puts "Cleaning Database..."
Restaurant.destroy_all

# Seed new records
puts "Creating restaurants ..."
restaurants_data = [
  { name: 'Comme Chez soi', address: 'Lier St', phone_number: '555-1234', category: 'belgian' },
  { name: 'Fromage', address: 'Jamaica Ave', phone_number: '555-5678', category: 'french' },
  { name: 'The Red Dragon', address: '789 Pine St', phone_number: '555-9876', category: 'chinese' },
  { name: 'Pizza Pasta', address: '321 Elm St', phone_number: '555-4321', category: 'italian' },
  { name: 'Fugu Venom', address: '654 Maple St', phone_number: '555-8765', category: 'japanese' }
]

restaurants_data.each do |restaurant_data|
  Restaurant.create!(restaurant_data)
end

puts "Finished!"
