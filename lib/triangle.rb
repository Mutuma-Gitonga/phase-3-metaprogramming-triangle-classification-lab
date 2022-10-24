class Triangle

  attr_accessor :side_a, :side_b, :side_c
  
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind 
    if((@side_a > 0 && @side_b > 0 && side_c > 0) && (@side_a + @side_b > @side_c && @side_a + @side_c > @side_b && @side_b + @side_c > @side_a))

      unique_triangle_sides = [@side_a, @side_b, @side_c].uniq
      
      case unique_triangle_sides.length
              when 1 then :equilateral
              when 2 then :isosceles
              when 3 then :scalene
              end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
