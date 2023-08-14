def calculate_area 
  puts "1. Hình chữ nhật"
  puts "2. Hình vuông"
  puts "3. Hình tròn"
  puts
  print "Lựa chọn"
  choice = gets.chomp.to_i

  case choice
  when 1
    rectangle()
  when 2
    square()
  when 3
    circle()
  else
  end
end

def rectangle
  puts "Nhập chiều dài:"
  a = gets.chomp.to_f
  puts "Nhập chiều rộng:"
  b = gets.chomp.to_f

  puts "Diện tích hình chữ nhật: #{a * b}"
  puts
  calculate_area()
end

def square
  puts "Nhập chiều dài cạnh:"
  a = gets.chomp.to_f

  puts "Diện tích hình vuông: #{a * a}"
  puts
  calculate_area()
end

def circle
  puts "Nhập chiều dài bán kính"
  r = gets.chomp.to_f

  puts "Diện tích hình tròn: #{r * r * 3.14}"
  calculate_area()
end

calculate_area()
