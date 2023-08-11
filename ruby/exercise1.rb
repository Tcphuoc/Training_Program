def calculate_number (a, b)
  puts
  
  puts a + b
  puts a - b
  puts a * b
  puts a / b
end

puts "Enter the first number:"
number1 = gets.chomp

puts "Enter the second number"
number2 = gets.chomp

calculate_number(number1.to_i, number2.to_i)