def sort_number(numbers)
  n = numbers.length - 1
  (0..n - 1).each do |i|
    (i + 1..n).each do |j|
      numbers[i], numbers[j] = numbers[j], numbers[i] if numbers[i] > numbers[j]
    end
  end
  numbers
end

numbers = [3, 5, 7, 1, 9, 2, 8]
puts "Mảng trước khi sắp xếp: #{numbers}"
puts "Selection sort: #{sort_number(numbers)}"

# Phép toán cơ bản: so sánh và swap
# Số lượng: Cần n + (n-1) + (n-2) ... 1 = n * (n + 1) / 2
# Phần tử chi phối: n ^ 2
# Độ phức tạp: O(n^2)
