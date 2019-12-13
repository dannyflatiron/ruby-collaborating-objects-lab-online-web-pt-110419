require 'pry'
class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
    # binding.pry
  end

  def files
  # @files ||= Dir.glob("#{path}/*.mp3") 
  Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "a") }
  binding.pry
  end


end
