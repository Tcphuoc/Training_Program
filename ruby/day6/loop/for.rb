puts "======For with array======"
fruits = ["apple", "banana", "cherry"]
for fruit in fruits
  puts fruit
end

puts "======For with range======"
for i in 1..5
  puts i
end

puts "======For with hash======"
person = {name: "Bob", age: 18, city: "Chicago"}
for key, value in person
  puts "#{key}: #{value}"
end
