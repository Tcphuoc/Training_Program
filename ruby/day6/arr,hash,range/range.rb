# Câu 1
puts 'Các số từ 1 - 100'
(1..100).each { |element| print "#{element} " }
puts puts

# Câu 2
puts 'Các số chẵn từ 2 - 20'
(2..20).step(2) { |element| print "#{element} " }
puts puts

# Câu 3
puts 'Các chữ từ a - z'
('a'..'z').each { |element| print "#{element} " }
puts puts

# Câu 4
def check_number(range, number)
  return 'số cần kiểm tra nằm trong phạm vi từ 1 đến 100.' if range.include? number


  'số cần kiểm tra không nằm trong phạm vi từ 1 đến 100.'
end

range = 1..100
number_to_check = 42
puts check_number(range, number_to_check)
