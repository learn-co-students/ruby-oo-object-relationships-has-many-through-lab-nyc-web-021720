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

    def songs #iterate thro songs find songs that belong to this genre
        Song.all.select{|song|song.genre == self}
    end 

    def artists # iterates over genres collection of songs 
        #and collects artist that owns each song 
        songs.map{|song|song.artist}
    end 
end 