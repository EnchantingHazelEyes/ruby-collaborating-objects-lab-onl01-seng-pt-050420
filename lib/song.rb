class Song
  attr_accessor :artist, :name
 
  @@all = []
 
  def initialize(name)
    @name = name
    save
  end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
   
   def self.new_by_filename(name)
    song = self.new
    song.name = name.split(" - ")[1]
    song
  end
  
end