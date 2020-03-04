class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
       genre_count[genre] ? genre_count[genre].value += 1 : genre_count[genre].value = 1
    end
  end

  def artist_count
    artist_count = {}
    @@artists.each do |artist|
       artist_count[artist] ? artist_count[artist] += 1 : artist_count[artist] = 1
    end
  end
end
