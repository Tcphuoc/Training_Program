arr = [10, 5, 7, 3, 2, 2, 1]

# Câu 1
puts "Giá trị lớn nhất: #{arr.max}"
puts "Giá trị nhỏ nhất #{arr.min}"
puts

# Câu 2
puts "Đảo ngược mảng: #{arr.reverse}"
puts

# Câu 3
result = arr.select { |element| element if arr.count(element) == 1 }
puts "Các phần tử duy nhất không trùng lặp: #{result}"
puts

# Câu 4
result = arr.select { |element| element if element.even? }
puts "Các phần tử chẵn: #{result}"
puts

# Câu 5
arr1 = [1, 2, 3]
arr2 = [4, 5, 6]
puts "Gộp hai mảng: #{arr1 + arr2}"
