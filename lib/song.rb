class Song

    attr_reader :name, :artist, :genre
    @@all = []

    def initialize(song_name, song_artist, song_genre)
        @name = song_name
        @artist = song_artist
        @genre = song_genre
        Song.all << self
    end

    def self.all
        @@all
    end
end