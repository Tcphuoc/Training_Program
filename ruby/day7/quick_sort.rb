def increase(arr)
  return arr if arr.length <= 1

  pivot = arr[-1]
  greater_pivot = []
  smaller_pivot = []

  n = arr.length-2
  (0..n).each do |i|
    greater_pivot << arr[i] if pivot <= arr[i]
    smaller_pivot << arr[i] if arr[i] < pivot
  end

  increase(smaller_pivot) + [pivot] + increase(greater_pivot)
end

def decrease(arr)
  return arr if arr.length <= 1

  pivot = arr[-1]
  greater_pivot = []
  smaller_pivot = []

  n = arr.length-2
  (0..n).each do |i|
    greater_pivot << arr[i] if pivot <= arr[i]
    smaller_pivot << arr[i] if arr[i] < pivot
  end

  decrease(greater_pivot) + [pivot] + decrease(smaller_pivot)
end

numbers = [4, 1, 7, -2, 100, 25, 200, 43, -12]
p numbers
puts "================After sort================"
puts "Increase: #{increase(numbers)}"
puts "Decrease: #{decrease(numbers)}"
