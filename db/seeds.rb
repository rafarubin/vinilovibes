# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
require "open-uri"

puts "Cleaning database..."
Product.destroy_all
Purchase.destroy_all

User.create(name: "Ralph", email: "ralph@gmail.com", password: "123456")
User.create(name: "Shin", email: "shin@gmail.com", password: "123456")
User.create(name: "Adriana", email: "adriana@gmail.com", password: "123456")
User.create(name: "Paul", email: "paul@gmail.com", password: "123456")
User.create(name: "Enrique", email: "enrique@gmail.com", password: "123456")

file = URI.parse("https://upload.wikimedia.org/wikipedia/en/d/df/RedHotChiliPeppersCalifornication.jpg").open
product1 = Product.new(name: "Californication", artist: "Red Hot Chili Peppers", price: 15, category: "Funk", user_id: 3)
product1.photo.attach(io: file, filename: "californicacion.jpg", content_type: "image/jpeg")
product1.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/en/e/ef/Led_Zeppelin_-_Led_Zeppelin_%281969%29_front_cover.png").open
product2 = Product.new(name: "Led Zeppelin", artist: "Led Zeppelin", price: 15, category: "Funk", user_id: 2)
product2.photo.attach(io: file, filename: "ledzep.png", content_type: "image/png")
product2.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/en/1/1f/Taylor_Swift_-_Taylor_Swift.png").open
product3 = Product.new(name: "Taylor Swift", artist: "Taylor Swift", price: 15, category: "Pop", user_id: 2)
product3.photo.attach(io: file, filename: "ledzep.png", content_type: "image/png")
product3.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/en/b/ba/Radioheadokcomputer.png").open
product4 = Product.new(name: "OK Computer", artist: "Radiohead", price: 15, category: "Alternative", user_id: 1)
product4.photo.attach(io: file, filename: "ledzep.png", content_type: "image/png")
product4.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/en/d/d0/Come_Fly_with_Me_%28Frank_Sinatra_album%29.jpg").open
product5 = Product.new(name: "Come Fly with Me", artist: "Frank Sinatra", price: 15, category: "Alternative", user_id: 1)
product5.photo.attach(io: file, filename: "ledzep.png", content_type: "image/jpg")
product5.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/en/5/55/Michael_Jackson_-_Thriller.png").open
product6 = Product.new(name: "Thriller", artist: "Michael Jackson", price: 15, category: "Pop", user_id: 2)
product6.photo.attach(io: file, filename: "ledzep.png", content_type: "image/png")
product6.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/en/4/42/Beatles_-_Abbey_Road.jpg").open
product7 = Product.new(name: "Abbey Road", artist: "The Beatles", price: 15, category: "Rock", user_id: 1)
product7.photo.attach(io: file, filename: "ledzep.png", content_type: "image/jpg")
product7.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/en/2/25/LetItBe.jpg").open
product8 = Product.new(name: "Let It Be", artist: "The Beatles", price: 15, category: "Rock", user_id: 2)
product8.photo.attach(io: file, filename: "ledzep.png", content_type: "image/jpg")
product8.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/en/1/15/Sodastereo.jpg").open
product9 = Product.new(name: "Soda Stereo", artist: "Soda Stereo", price: 15, category: "Rock", user_id: 3)
product9.photo.attach(io: file, filename: "ledzep.png", content_type: "image/jpg")
product9.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/en/2/25/LetItBe.jpg").open
product10 = Product.new(name: "For Once in My Life", artist: "Stevie Wonder", price: 15, category: "Pop", user_id: 2)
product10.photo.attach(io: file, filename: "ledzep.png", content_type: "image/jpg")
product10.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/en/f/f2/Jimi_Hendrix_-_Electric_Ladyland.jpg").open
product11 = Product.new(name: "Electric Ladyland", artist: "The Jimi Hendrix Experience", price: 15, category: "Blues", user_id: 3)
product11.photo.attach(io: file, filename: "ledzep.png", content_type: "image/jpg")
product11.save

file = URI.parse("https://upload.wikimedia.org/wikipedia/en/6/60/GunsnRosesAppetiteforDestructionalbumcover.jpg").open
product12 = Product.new(name: "Appetite for Destruction", artist: "Guns N' Roses", price: 15, category: "Rock", user_id: 3)
product12.photo.attach(io: file, filename: "ledzep.png", content_type: "image/jpg")
product12.save
