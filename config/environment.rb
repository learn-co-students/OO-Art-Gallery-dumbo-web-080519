require "pry"
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

jon = Artist.new("jon", 5)
downtown = Gallery.new("downtown", "new york")
red_river = Painting.new("red river", 50, downtown, jon)

dave = Artist.new("dave", 7)
uptown = Gallery.new("uptown", "new york")
sandy_beach = Painting.new("sandy_beach", 70, uptown, dave)


rocks = Painting.new("rocks", 300 , uptown, dave)


binding.pry
0
