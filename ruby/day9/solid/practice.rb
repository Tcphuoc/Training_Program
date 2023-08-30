module Add
  def add
    raise 'This method should be overridden'
  end
end

module Subtract
  def subtract
    raise 'This method should be overridden'
  end
end

class CalcTwoNumber
  include Add, Subtract
  attr_reader :a, :b

  def initialize(a, b)
    @a = a
    @b = b
  end

  def add
    @a + @b
  end

  def subtract
    @a - @b
  end
end

class Calculator
  include Add, Subtract

  def func_add(type)
    type.add
  end

  def func_subtract(type)
    type.subtract
  end
end

calc = Calculator.new
result = calc.func_add(CalcTwoNumber.new(10,1))
puts "The result is #{result}"
