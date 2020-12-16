require "Pry"
class Song
  attr_accessor :artist, :genre, :name
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @artist = artist
    @name = name
    @genre = genre

    @@count += 1
    @@artists << artist
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
    songs_per_genre = {}
    self.genres.each do |genre|
      songs_per_genre[genre] = @@genres.count(genre)
    end
    songs_per_genre
  end

  def self.artist_count
    songs_per_artist = {}
    self.artists.each do |artist|
      songs_per_artist[artist] = @@artists.count(artist)
    end
    songs_per_artist
  end
end

#cheesewhizz = Song.new("cheezewhizz", "runt", "dubble-thump")

#binding.pry
