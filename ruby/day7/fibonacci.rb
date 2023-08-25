def fibonacci(number)
  return number if number == 1 || number == 0
  return fibonacci(number-1) + fibonacci(number-2)
end

def print_number(number)
  (0..number-1).each do |i|
    puts "Số fibonacci thứ #{i+1}: #{fibonacci(i)}"
  end
end 

print_number(20)
