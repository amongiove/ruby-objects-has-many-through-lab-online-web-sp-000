class Song

  attr_accessor :name, :Artist, :Genre
  @@all = []

  def initialize(name, Artist, Genre)
    @name = name
    @Artist = Artist
    @Genre = Genre
    @@all << self
  end

  def self.all
    @@all
  end

end
