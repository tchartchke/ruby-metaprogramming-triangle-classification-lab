class Triangle
  attr_accessor :lengths

  def initialize(one, two, three)
    self.lengths = [one, two, three].sort
  end

  def kind
    if lengths[0] + lengths[1] <= lengths[2]
      begin
        raise TriangleError
      end
    else
      if lengths[0] == lengths[1] && lengths[1] == lengths[2]
        return :equilateral
      elsif lengths[1] == lengths[2]
        return :isosceles
      else
        return :scalene
      end
    end
  end

  class TriangleError < StandardError
  end
end