def calculate_number
  print "Nhập số đầu tiên: "
  number1 = gets.chomp.to_f

  print "Nhập số thứ hai: "
  number2 = gets.chomp.to_f

  puts
  puts "Vui lòng lựa chọn phép tính"
  puts "1. Phép tính cộng"
  puts "2. Phép tính trừ"
  puts "3. Phép tính nhân"
  puts "4. Phép tính chia"
  print "Lựa chọn: "
  choice = gets.chomp

  case choice
  when "1"
    sum(number1, number2)
  when "2"
    subtract(number1, number2)
  when "3"
    multiple(number1, number2)
  when "4"
    divide(number1, number2)
  else
    puts "Không có chức năng tương ứng"
  end
end

def sum(a, b)
  puts "Tổng hai số là #{a + b}"
  continue()
end

def subtract(a, b)
  puts "Hiệu hai số là #{a - b}"
  continue()
end

def multiple(a, b)
  puts "Tích hai số là #{a * b}"
  continue()
end

def divide(a, b)
  puts "Thương hai số là #{a / b}"
  continue()
end

def continue
  puts
  puts "Bạn có muốn tiếp tục? (Y/N)"
  calculate_number() if gets.chomp.upcase == "Y"
  puts
end

calculate_number()
