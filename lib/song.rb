require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []
 
 
 def Song.create
   song = Song.new
   song.save
   song
end

def self.new_by_name(song_name)
    song = self.create
    song.name = song_name
    song
end

def self.create_by_name(song_name)
    song = self.create
    song.name = song_name
    song
end

def self.all
    @@all
end
 
def Song.find_by_name(name)
   Song.all.detect{|s| s.name == "#{name}"}
end
 
 def Song.find_or_create_by_name(name)
   Song.find_by_name(name) || Song.create_by_name(name)
 end
 
 def Song.alphabetical
   @name = name
   @@all.each.sort_by{|s|
end

  def save
    self.class.all << self
  end
 
end