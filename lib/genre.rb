class Genre
    attr_reader :artist, :name
    @@all = []

    def initialize(name)
        @name = name
        Genre.all << self
    end

    def songs
       Song.all.select do |song|
        song.genre == self
       end
    end

    def artists
        Song.all.map do |song|
            song.artist
        end
    end

    def self.all
        @@all
    end

end