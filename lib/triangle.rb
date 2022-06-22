class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    all_sides = [@side_1, side_2, side_3].sort
    raise TriangleError if all_sides.find { |side| side <= 0 } || all_sides[2] >= all_sides[0] + all_sides[1]
    if all_sides.uniq.length == 1
      :equilateral
    elsif all_sides.uniq.length == 2
      :isosceles
    else :scalene
    end
  end

  class TriangleError < StandardError
  end
end
