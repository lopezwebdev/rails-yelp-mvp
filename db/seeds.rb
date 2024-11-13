# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

restaurants_info = [
  { name: 'Henry Sushi', address: 'Meguro, Tokyo', category: 'japanese', phone_number: rand(1000..9999).to_s },
  { name: 'Esteban Gelato Delight', address: 'Ginza, Tokyo', category: 'italian', phone_number: rand(1000..9999).to_s },
  { name: 'Mark Yakisoba ', address: 'Osaka, Japan', category: 'japanese', phone_number: rand(1000..9999).to_s },
  { name: 'Arisa Pizza', address: 'Paris, France', category: 'italian', phone_number: rand(1000..9999).to_s },
  { name: 'Claudia Kung Pao Chicken', address: 'Meguro, Tokyo', category: 'chinese', phone_number: rand(1000..9999).to_s }
]

restaurants_info.each do |restaurant|
  Restaurant.create!(restaurant)
end
