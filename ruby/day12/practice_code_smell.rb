class Sides
  def print_value_area(area)
    puts "Area = #{area}"
  end
end

class Rectangle < Sides
  def initialize(length, width)
    @length = length
    @width = width
  end

  # In kết quả tính diện tích
  def print
    print_value_area(calculate_area)
  end

  def calculate_area
    length * width
  end
end

class Circle < Sides
  def initialize(radius)
    @radius = radius
  end

  # In kết quả tính diện tích
  def print
    print_value_area(calculate_area)
  end

  def calculate_area
    Math::PI * radius**2
  end
end

class Triangle < Sides
  def initialize(length, width)
    @length = length
    @width = width
  end

  # In kết quả tính diện tích
  def print
    print_value_area(calculate_area)
  end

  def calculate_area
    0.5 * length * width
  end
end
