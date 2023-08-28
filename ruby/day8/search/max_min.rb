def find_max(arr)
  max = arr[0]
  i = 0
  arr.each_with_index do |value, index|
    if max < value
      max = value
      i = index
    end
  end
  { value: max, index: i }
end

def find_min(arr)
  min = arr[0]
  i = 0
  arr.each_with_index do |value, index|
    if min > value
      min = value
      i = index
    end
  end
  { value: min, index: i }
end

array = [1, 4, 2, 6, 8, 13, 10]
max = find_max(array)
min = find_min(array)

puts "The max value is #{max[:value]} at index #{max[:index]}"
puts "The min value is #{min[:value]} at index #{min[:index]}"
