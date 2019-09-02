require_relative '../config/environment.rb'

derya = Artist.new("Derya", 20)
matt = Artist.new("Matt", 2)

dumbo = Gallery.new("DUMBO Gallery", "NYC")
picasso = Gallery.new("Go Picasso", "Paris")

imagine = Painting.new("Imagine", 20000, derya, dumbo)
wishing_world = Painting.new("The Wishing World", 1000000, derya, dumbo)
sports = Painting.new("Sports", 10, matt, dumbo)
dream_big = Painting.new("Dream big yo girl", 50, derya, picasso)




binding.pry

puts "Bob Ross rules."
