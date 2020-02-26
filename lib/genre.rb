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

    def songs
        Song.all.select {|song_obj| song_obj.genre == self}
    end

    def artists
        songs.map {|song_obj| song_obj.artist}
    end
end