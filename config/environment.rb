require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

brian = Artist.new("Brian", 1)
kim = Artist.new("Kim", 3)

moma = Gallery.new("MOMA","New York")
museum = Gallery.new("Museum", "DC")
anime = Painting.new("pikachu", 100, brian, moma)
anime1 = Painting.new("pikachu1", 101, brian, moma)
spongebob = Painting.new("squarepants", 50, kim, museum)




binding.pry

0
