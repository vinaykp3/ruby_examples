class Square
  attr_accessor :side_length

  def initialize side_length = 0
    @side_length = side_length
  end
  
  def area
    @side_length * @side_length
  end
  
  def perimeter
    4 * @side_length
  end

end

s = Square.new(5)
p "Area #{s.area}"
p "perimeter #{s.perimeter}"
