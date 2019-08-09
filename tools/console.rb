require_relative '../config/environment.rb'


michelle = Artist.new("michelle", 50)
joshua = Artist.new("joshua", 25)
avi = Artist.new("avi", 1000)

gallery1 = Gallery.new("MSG", "Newyork")
gallery2 = Gallery.new("salt", "Maine")
gallery3 = Gallery.new("Moon", "California")

painting1 = Painting.new("Test", 101,michelle, gallery2)
painting2 = Painting.new("Test", 110, michelle, gallery1)
painting3 = Painting.new("Test", 100, joshua, gallery1)
painting4 = Painting.new("Test", 500, joshua, gallery2)


Pry.start

puts "Bob Ross rules."
