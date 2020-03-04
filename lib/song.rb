class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artist = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artist << artist
    @genre = genre
    @@genre << genre
  end

  def count 
    @@count
  end
end
