# Vấn đề
# Vi phạm nguyên tắc ISP vì một interface có nhiều method nhưng các class không sử dụng hết tất cả các method trong interface

class OrderCoffee
  def select_drink_type
  end

  def select_portion
  end

  def select_sugar_amount
  end
  
  def brew_coffee
  end
end

class ServeCoffee
  def clean_coffee_machine
  end

  def fill_coffee_beans
  end

  def fill_water_supply
  end

  def fill_sugar_supply
  end
end

class Person
  def initialize
    @coffee_machine = OrderCoffee.new
  end

  def make_coffee
    @coffee_machine.select_drink_type
    @coffee_machine.select_portion
    @coffee_machine.select_sugar_amount
    @coffee_machine.brew_coffee
  end
end

class Staff
  def initialize
    @coffee_machine = ServeCoffee.new
  end

  def serv
    @coffee_machine.clean_coffee_machine
    @coffee_machine.fill_coffee_beans
    @coffee_machine.fill_sugar_supply
    @coffee_machine.fill_water_supply
  end
end
