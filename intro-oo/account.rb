require 'pry'
class Song
  attr_reader :title, :listens
  attr_accessor :artist,  :release_year
@@all = []

   def initialize(artist, title, release_year)
     @artist = artist
     @title = title
     @release_year = release_year
     @listens = 0
     @@all << self
   end

   def radio_play
     @listens += 1
   end

   def self.all
     @@all
   end

   def self.older_songs
     all.select do |song|
       song.release_year < 2000
     end
   end

   # def artist
   #   @artist
   # end

   # def artist=(new_artist)
   #   @artist = new_artist
   # end


end

Song.new("Bruce Springsteen", "Born to Run", 1978)
Song.new("Bahamen", "Who Let The Dogs Out?", 2000)
Song.new("Johann Sebastian Bach", "Brandenberg Concerto", 1721)
binding.pry
true
