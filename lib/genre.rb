class Genre

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        Genre.all << self

    end 

    def self.all
        @@all
    end 

    # iterate thru list of songs and return songs that match
    # current (self) genre
    def songs
        Song.all.select do |genre_songs|
            genre_songs.genre == self
        end 
    end 

    def artists
        songs.map do |artist_genres|
            artist_genres.artist
        end 
    end 

end 