class Song
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artists_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    @@genres << @genre
    @@artists << @artist
  end

  def self.count
     @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
      @@genre_count[genre] = @@genres.count(genre)
    end
    @@genre_count
  end

def self.artist_count
  @@artists.each do |artist|
    @@artists_count[artist] = @@artists.count(artist)
  end
  @@artists_count
end
end
