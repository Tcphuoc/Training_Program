class Animal
  def run
    raise 'Not implement method'
  end
end

class Cat < Animal
  def run
    puts 'Cat run'
  end
end

class Dog < Animal
  def run
    puts 'Dog run'
  end
end

a = Cat.new
a.run
