require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    genre_list = []
    @@genres.each do |genre|
      if genre_list.include?(genre)
      else
      genre_list << genre
      end
    end
    genre_list
  end

  def self.artists
    artist_list = []
    @@artists.each do |artist|
      if artist_list.include?(artist)
      else
        artist_list << artist
      end
    end
    artist_list
  end

  def self.artist_count
    artists = {}
    @@artists.each do |artist|
      if artists.has_key?(artist)
        artists[artist] += 1
      else
        artists[artist] = 1
      end
    end
  artists
  end

  def self.genre_count
    genres = {}
    @@genres.each do |genre|
      if genres.has_key?(genre)
        genres[genre] += 1
      else
        genres[genre] = 1
      end
    end
  genres
  end

end
