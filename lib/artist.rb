class Artist
    attr_reader :name 
    @@all = []
    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def new_song(name,genre) # song should know it belongs to artist 
        new_song = Song.new(name,self,genre)
    end 

    def songs #iterate thro songs find songs belonging to artist 
        Song.all.select{|song|song.artist == self}
    end 

    def genres #iterates thro artists songs and collects genre of each song
    
        songs.map{|song|song.genre}
        
    end 


end 