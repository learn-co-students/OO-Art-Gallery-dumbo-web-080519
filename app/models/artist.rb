require 'pry'

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
    self.paintings.map do |painting|
      painting.gallery 
    end 
  end 

  def cities 
   self.galleries.map do |gallery|
      gallery.city
    end 
  end 

  def self.total_experience #.inject method
    total_yrs = 0
    self.all.each do |artist|
      total_yrs += artist.years_experience
    end
    total_yrs
    # (self.all.map {|artist| artist.years_experience }).sum 

    # total = self.all.map do |artist|
    #   artist.years_experience
    # end 
    # total.sum
  end

  def self.most_prolific
    most_prolific = nil
    highest_artist = 0.0
    self.all.each do |artist|
      average = artist.paintings.size.to_f/artist.years_experience.to_f
      if average > highest_artist 
        highest_artist = average 
        most_prolific = artist
      end 
    end 
    most_prolific

  end 

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end 

end

