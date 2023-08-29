city = ["Chicago", "New York", "Ha Noi", "Bangkok"]
puts "======While 1======"
i = 0
while i < city.length
  puts "#{city[i]}"
  i += 1
end

puts "======While 2======"
i = 0
puts i += 1 while i < city.length

puts "======While 3======"
i = city.length-1
begin
  puts "#{city[i]}"
  i -= 1
end while i >= 0

puts "======While 4======"
$i = 0
def print_city(city)
  puts "#{city[$i]}"
  $i += 1
end
print_city(city) while $i < city.length
