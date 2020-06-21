class Artist 

attr_accessor :name 
@@all = []

  def initialize(name)
    @name = name
    save
  end 
  
  def self.all
    @@all
  end 
  
  def save
    @@all << self
  end 
  
   def add_song(song)
    song.artist = self
  end
 
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    song_found = Song.all.find {|s| s.name == name}
    if song_found == nil
      new_song = Song.new(name)
    else
      add_song(song_found)
    end
  end 

end 