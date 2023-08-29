numbers = [1, 2, 3, 4]

puts "======EACH 1======"
numbers.each do |number|
  puts number
end

puts "======EACH 2======"
numbers.each_with_index do |number, index|
  puts "#{index+1}. Value is #{number}"
end

puts "======MAP 1======"
other = numbers.map { |number| number**2 }
puts other

puts "======MAP 2======"
another = numbers.map(&:to_s)
p another
