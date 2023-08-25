def increase(arr)
  n = arr.length - 1
  (0..(n - 1)).each do |i|
    (0..(n - i - 1)).each do |j|
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
    end
  end
  arr
end

def decrease(arr)
  n = arr.length - 1
  (0..(n - 1)).each do |i|
    (0..(n - i - 1)).each do |j|
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] < arr[j + 1]
    end
  end
  arr
end

numbers = [4, 1, 7, -2, 100, 25, 200, 43, -12]
p numbers
puts "================After sort================"
puts "Increase: #{increase(numbers)}"
puts "Decrease: #{decrease(numbers)}"
