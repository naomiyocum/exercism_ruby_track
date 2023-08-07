class Triangle
  attr_reader :sides
  
  def initialize(sides)
    @sides = sides
  end

  def triangle?
    return false if sides.all? {|side| side == 0}
    a,b,c = sides
    a + b >= c && b + c >= a && a + c >= b
  end

  def equilateral?
    triangle? && sides.uniq.size == 1
  end

  def isosceles?
    triangle? && sides.uniq.size <= 2
  end

  def scalene?
    triangle? && sides.uniq.size == 3
  end
end