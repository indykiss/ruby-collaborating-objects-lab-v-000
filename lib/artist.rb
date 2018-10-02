class Artist 
  attr_accessor :name, :songs
  
  def self.all
   @@all
  end
  
  @@all = []
  
  def initialize(name) 
    @name = name 
    @songs = []
  end 
  
  def add_song(song) 
    self.songs << song
    songs
  end 
  
  def save
    @@all << self
    @@all
  end 

	def self.find_or_create_by_name(name)
		@@all.each  do |artist|
			if artist.name == name 
				return artist 
			else 
				return self.new(name)
			end 
		end 
	end 

  def print_songs
    self.songs.each {|song| puts song.name}
    songs 
  end 
  
end 