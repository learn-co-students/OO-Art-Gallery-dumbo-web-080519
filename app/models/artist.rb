class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    Gallery.all.select do |gallery|
      gallery.artist == self
    end
  end

  def cities
    paintings.map {|painting| 
    painting.gallery.city
    } 
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.total_experience
    (@@all.map {|artist| artist.years_experience}).sum
  end

  def self.most_prolific
    legend = nil
    highest_average = 0.00
    @@all.each do |artist| 
      average = artist.paintings.size.to_f / artist.years_experience.to_f
      if average > highest_average
        legend = artist
        highest_average = average
      end
    end
    legend
  end


end
