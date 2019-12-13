class Song

attr_accessor :name
attr_reader :artist

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

  def self.new_by_filename(file)
  end

end
