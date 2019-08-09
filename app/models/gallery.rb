class Gallery

  attr_reader :name, :city
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    self.paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    self.artists.map do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    most_expensive = Painting.all.map do |painting|
      painting.price
    end
    most_expensive.max
  end
end
