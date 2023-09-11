class Sides
  def print_value_area(area)
    puts "Area = #{area}"
  end
end

class Rectangle
  def initialize(length, width)
    @length = length
    @width = width
    @sides = Sides.new
  end

  # In kết quả tính diện tích
  def print
    @sides.print_value_area(calculate_area)
  end

  def calculate_area
    length * width
  end
end

class Circle
  def initialize(radius)
    @radius = radius
    @sides = Sides.new
  end

  # In kết quả tính diện tích
  def print
    @sides.print_value_area(calculate_area)
  end

  def calculate_area
    Math::PI * radius**2
  end
end

class Triangle
  def initialize(length, width)
    @length = length
    @width = width
    @sides = Sides.new
  end

  # In kết quả tính diện tích
  def print
    @sides.print_value_area(calculate_area)
  end

  def calculate_area
    0.5 * length * width
  end
end
