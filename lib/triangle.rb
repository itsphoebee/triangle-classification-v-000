class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3
  attr_reader :type
  def initialize(length1:, length2:, length3:)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if @length1 == @length2 == @length3
      @type == :equilateral
    end
  end

end


class TriangleError < StandardError

end
