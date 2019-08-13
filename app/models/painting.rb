class Painting

  attr_reader :title, :price, :artist, :gallery


  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self

  end

  def self.all
    @@all

  end

  def self.total_price
    self.all.map do |painting|
      painting.price
    end.sum
  end


  end
