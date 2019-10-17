require 'pry'
class Artist
  attr_accessor :name, :song
 @@all = []
 #@@song_count = 1
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def add_song(song)
    #@@song_count += 1
    #@songs << song
  #binding.pry
    song.artist = self
  end
  
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song_by_name(song_name)
    s = Song.new(song_name)
    self.add_song(s)
   # binding.pry
  end
  
  def self.song_count
    Song.all.count
  end
  
  
end