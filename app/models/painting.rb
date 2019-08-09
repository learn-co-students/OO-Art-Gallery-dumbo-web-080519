class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end 

  def self.total_price
    total_price = 0
    self.all.each do |artist|
      total_price += artist.price
    end
    total_price
  end 
  

end
