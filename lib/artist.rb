class Artist

  attr_accessor :name
  @@all = []
  @songs = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    @songs << Song.all.select {|song| song.artist == self}
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
  end

  def genres
   @songs.select {|song| song.genre}
  end



end
