class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3, :type
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if self.length1 <= 0 || self.length2 <= 0 || self.length3 <= 0
        raise TriangleError
      rescue TriangleError => error
        puts error.message
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
