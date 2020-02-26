class Song

    attr_reader :name, :artist, :genre

    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        # put all songs into array
        Song.all << self

    end 

    def self.all
        @@all
    end 

end 