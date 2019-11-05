require 'pry'

class Song 
  attr_accessor :artist, :name
  
  @@all= [ ]
  
  def initialize(name)
    @name = name
    @@all << self
    end

def self.all
  @@all
  end

def artist_name
  if self.artist
    artist.name
  end
  #binding.pry
 end



end