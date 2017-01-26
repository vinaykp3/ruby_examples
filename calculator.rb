class Calculator
  def pi
    3.14
  end
end

class Circle < Calculator
  def area(radius)
    pi * (radius ** 2)
  end
end

c = Circle.new
puts c.area(5)

class Hero
  def can_fly? 
    false
  end

  def 
end