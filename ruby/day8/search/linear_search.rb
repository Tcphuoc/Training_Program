def linear_search(arr, target)
  arr.each_with_index { |value, index| return index if value == target }
  
  -1
end

array = [1, 4, 2, 6, 8, 13, 10]
target = 11
pos = linear_search(array, target)

if pos == -1
  puts "Target #{target} not found in array"
else
  puts "Target #{target} found at index #{pos} in array"
end
