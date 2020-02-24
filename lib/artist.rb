class Artist

    attr_reader :name
    @@all = []

    def initialize(artist_name)
        @name = artist_name
        Artist.all << self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def new_song(song_name, song_genre)
        Song.new(song_name, self, song_genre)
    end

    def genres
        songs.map{|song| song.genre}.uniq
    end

    def self.all
        @@all
    end
end