# Câu 1
person = { 'name' => 'John', 'age' => 30, 'city' => 'New York' }

person.each do |key, value|
  puts "#{key.capitalize}: #{value}"
end

# Câu 2
sales = { 'product_A' => 100, 'product_B' => 200, 'product_C' => 150 }
total = 0
sales.each_value { |value| total += value }
puts "Tổng doanh số bán hàng: #{total}"
