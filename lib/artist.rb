require 'pry'
#artist is the joiner
class Artist

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        Artist.all << self

    end 

    def self.all
        @@all
    end 

    # takes in argument (name) and (genre) and creates a new song.
    # song belongs to this (self) artist
    def new_song(name, genre)
        # name / artist / genre
        Song.new(name, self, genre)
    end 

    # instance method that iterates thru all songs for 
    # current (self) artist
    def songs
        # binding.pry
        Song.all.select do |artist_songs|
            artist_songs.artist == self
        end
    end 

    # go thru current artist (self) songs and return list of genres
    def genres
        songs.map do |song_genres|
            song_genres.genre
        end 
    end 
end 