class Triangle
  # write code here
  attr_accessor :x, :y, :z :type
  def initialize(x, y, z)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if self.length1 <= 0 || self.length2 <= 0 || self.length3 <= 0
      begin
        raise TriangleError
        puts error.message
      end
      elsif self.length1 == self.length2 && self.length2 == self.length3
      @type = :equilateral
    elsif
      self.length1 == self.length2 || self.length2 == self.length3 || self.length1 == self.length3
      @type = :isosceles
    else
      self.length1 != self.length2 && self.length2 != self.length3 && self.length1 != self.length3
      @type = :scalene
    end
  end

end


class TriangleError < StandardError
  def message
    "Please enter correct lengths."
  end
end
