require "pry"

class Artist 
    attr_accessor :name
    
    @@all = []
    
    def initialize (name)
        @name = name 
        Artist.all << self
    end


    def self.all 
        @@all 
    end

    def songs
        Song.all.select do |song_obj|
            song_obj.artist == self 
        end
    end

    def new_song (name,genre)
        Song.new(name,self,genre)
    end

    def genres
        songs.map do |song_obj|
            song_obj.genre
            # binding.pry 
        end
    end
end
