require 'pry'

class Triangle
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def valid?
    unless @side_1.positive? && @side_2.positive? && @side_3.positive? &&
           @side_1 + @side_2 > @side_3 && @side_1 + @side_3 > @side_2 && @side_2 + @side_3 > @side_1

      raise TriangleError
    end
  end

  def kind
    valid?

    if @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      'you must give the get_married method an argument of an instance of the person class!'
    end
  end
end
