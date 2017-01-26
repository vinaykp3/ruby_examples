class Song
  attr_accessor :length
  def initialize(name, length)
    @name = name
    @length = length
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end
end

=begin
song = Song.new('Hello, its me', 300)
puts song.to_s
puts song.name
puts song.length
exit

# open class in ruby
class Song
  def to_s
    puts "Song is '#{@name}', and its #{@length} seconds long"
  end
end

song = Song.new('Hello, its me', 300)
puts song.to_s

=end
