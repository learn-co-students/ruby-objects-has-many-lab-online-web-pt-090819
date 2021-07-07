class Artist
  attr_accessor :name
 
   @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def songs
    @songs 
  end

  def self.song_count
    @@song_count
  end
end
jay_z = Artist.new("Jay-Z")
rap = Genre.new("rap")
ninety_nine_problems = Song.new("99 Problems", rap)
jay_z.add_song(ninety_nine_problems)
another_crappy_song = Song.new("Crappy Song", rap)
jay_z.add_song(another_crappy_song)
jay_z.songs
# ninety_nine_problems.genre
rap.songs #=> should include 99 problems

rap.songs.collect {|i| i.name}