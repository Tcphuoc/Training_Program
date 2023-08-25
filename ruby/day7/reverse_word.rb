def reverse_string(string)
  stack = []
  string.each_char { |char| stack.push(char) }
  result = ''
  stack.length.times { result += stack.pop }
  result
end

def reverse_array(array)
  stack = []
  array.each { |e| stack.push(e) }
  result = []
  stack.length.times {result << stack.pop}
  result
end

# print 'Nhập chuỗi muốn đảo ngược: '
# string = gets.chomp
# puts "Sau khi đảo ngược: #{reverse_string(string)}"

array = [1, 2, 3, 4, 5]
puts "Sau khi đảo ngược: #{reverse_array(array)}"

# Phép toán cơ bản: thêm và bớt phần tử vào stack
# Số lượng: 2n vì cần n lần để thêm và n lần để bớt phần tử khỏi stack
# Phần tử chi phối: n
# Độ phức tạp: O(n)
