class MP3Importer

attr_accessor :path, :file

def initialize(path)
  @path=path
end

def files
  #this link helps explain this: https://stackoverflow.com/questions/46575228/how-to-normalise-the-filename-to-just-the-mp3-filename-with-no-path-ruby
   Dir.chdir(@path) {| path | Dir.glob("*.mp3")}
end

  def import
  file.each do |filename|
      song = Song.new_by_filename(filename)
    end
  end



end
