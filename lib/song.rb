require 'pry'

class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count +=1
    @@artists << @artist
    @@genres << @genre

  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
    #binding.pry
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count

    genre_hash ={}
    @@genres.each do |g|
      if genre_hash[g]
            genre_hash[g] += 1
      else
        genre_hash[g] = 1
      #if genre_hash.has_key?(g)
      end
      #binding.pry

    #end
    end
    genre_hash
    #binding.pry
  end

  def self.artist_count
    artist_hash ={}
    @@artists.each do |a|
      if artist_hash[a]
            artist_hash[a] += 1
      else
        artist_hash[a] = 1
      #if genre_hash.has_key?(g)
      end
      #binding.pry

    #end
    end
    artist_hash
    #binding.pry


  end
end
