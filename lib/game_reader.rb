class GameReader

  def initialize
    read
  end

  def read
  file = File.open(ARGV[0], r)
    while file.gets
    lines << file.gets
    end

end
