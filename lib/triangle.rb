class Triangle
  attr_accessor :name

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def triangle_type
    if self.is_not_triangle?
      return  "This isn't a triangle"
    elsif self.equalateral?
      return "This is equalateral"
    elsif self.isosceles?
      return "This is isosceles"
    else
      return "This is scalene"
    end
  end

  def is_not_triangle?
    @side1 <= 0 || @side2 <= 0 || @side3 <= 0 || @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2
  end

  def equalateral?
    @side1 == @side2 && @side1== @side3
  end

  def isosceles?
    @side1 == @side2 || @side1 == @side3 || @side2 == @side3
  end

  def scalene?
    @side1 != @side2 || @side1 != @side3 || @side2 != @side3
  end

end
