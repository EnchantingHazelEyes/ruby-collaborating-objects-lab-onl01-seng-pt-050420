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
    file_found = Song.all.find {|s| s.name == name}
    if file_found == nil
      new_file = Song.new(name)
    else
      add_song(file_found)
    end

end 