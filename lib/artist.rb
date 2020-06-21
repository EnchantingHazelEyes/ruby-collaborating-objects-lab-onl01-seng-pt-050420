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
    file_found = Song.all.find {|p| p.name == name}
    if pokemon_found == nil
      new_pokemon = Pokemon.new(name, height)
    else
      add_pokemon(pokemon_found)
    end

end 