class Triangle
  # write code here
  attr_accessor :x, :y, :z
  attr_reader :type
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def equilateral?
    self.x == self.y && self.y == self.z
  end

  def isosceles?
    self.x == self.y || self.y == self.z || self.x == self.z
  end

  def scalene?
    self.x != self.y && self.y != self.z && self.x != self.z
  end

  def kind
    if self.length1 <= 0 || self.length2 <= 0 || self.length3 <= 0
      begin
        raise TriangleError
        puts error.message
      end
    elsif
      equilateral? == true
      @type = :equilateral
    elsif
      isosceles? == true
      @type = :isosceles
    elsif
      scalene? == true
      @type = :scalene
    end
  end

end


class TriangleError < StandardError
  def message
    "Please enter correct lengths."
  end
end
