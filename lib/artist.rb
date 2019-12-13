require 'pry'
class Artist

attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
    # binding.pry
    @songs = []
    # binding.pry
  end

  def self.all
    @@all
    # binding.pry
  end

  def songs
    songs = Song.all
    songs.select {|song| self == song.artist}
      # binding.pry
  end

  def add_song(artist_songs)
    @songs << artist_songs.artist = self
  end

  def self.find_or_create_by_name(artist_name)
    # where can I find the artist instances?

    artist = @@all.find {|a| a.name == artist_name}
    artist ? artist : Artist.new(artist_name)
  #  @@all doesn't contain any artist instances because an instance was never created which is why we have to do Artist.new
    # binding.pry
    # how do I create a new artist instance?

  end

  def print_songs
    # how do I access the artist's songs?
    artists_songs = songs
    artists_songs.each do |song|
      puts song.name
    end
  end

  def self.new_by_filename
  end

end
