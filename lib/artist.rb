require 'pry'

class Artist
  attr_accessor :name 
  
  @@songs = []

  def initialize(name)
    @name = name
  end
  
  def songs
    @@songs
  end
  

  def add_song(song)
    song.artist = self
  end    
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
  def self.song_count
    @@songs.count
  end
end