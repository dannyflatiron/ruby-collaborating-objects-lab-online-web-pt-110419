require 'pry'
class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
    # binding.pry
  end

  def files
  # @files ||= Dir.glob("#{path}/*.mp3") 
  #has to return an array of strings

  Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  # binding.pry
  end

  def import
    self.files.each{|file| Song.new_by_filename(file)}
  end
end
