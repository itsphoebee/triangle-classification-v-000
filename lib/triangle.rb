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
    if self.length1 == self.length2 == self.length3
      
  end
  
end


class TriangleError < StandardError

end
