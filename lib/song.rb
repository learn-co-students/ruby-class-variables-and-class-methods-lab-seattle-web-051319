require "pry"

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

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_types = self.genres
        
        # create a hash
        hash = {}
        genre_types.each do |type|
            occurs = @@genres.count(type)
            # assign keys(genre) and values(occurs) in hash
            hash[type] = occurs
        end
        hash
    end 

    def self.artist_count
        artist_names = self.artists
        # create a hash
        hash = {}

        artist_names.each do |artist|
            num_of_songs = @@artists.count(artist)
            # assign keys(artist) and values(num of songs) to hash
            hash[artist] = num_of_songs
        end
        hash
    end

end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")

puts ninety_nine_problems.name
puts ninety_nine_problems.artist
puts ninety_nine_problems.genre

