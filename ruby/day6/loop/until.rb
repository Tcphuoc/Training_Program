words = %w[city hello nice ruby amazing]
puts "======UNTIL 1======"
$i = 0
until words.length == $i
  puts words[$i]
  $i += 1
end

puts "======UNTIL 2======"
$i = words.length - 1
begin
  puts words[$i]
  $i -= 1
end until 0 == $i

puts "======UNTIL 3======"
$i = 0
def print_word(words)
  puts words[$i]
  $i += 1
end
print_word(words) until words.length == $i
