# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(name: "Ralph", email: "ralph@gmail.com", password: "123456")
User.create(name: "Shin", email: "shin@gmail.com", password: "123456")
User.create(name: "Adriana", email: "adriana@gmail.com", password: "123456")
User.create(name: "Paul", email: "paul@gmail.com", password: "123456")
User.create(name: "Enrique", email: "enrique@gmail.com", password: "123456")


Product.create(name: "Funny Girl", price: 10, artist: "Dick Curtis", category: "Variado", user_id: 3)
Product.create(name: "Californication", price: 15, artist: "RHCP", category: "Funk", user_id: 2)
Product.create(name: "Golden Days", price: 20, category: "Rock", artist: "Maddie", user_id: 1)
Product.create(name: "Feeling strong", price: 32, category: "Pop", artist: "Taylor Swift", user_id: 4)
Product.create(name: "Melancholy Hills", price: 45, category: "Alternative rock", artist: "Gorillaz", user_id: 5)
