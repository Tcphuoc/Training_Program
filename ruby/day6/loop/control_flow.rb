strings = %w[9 hello 1 2 hi 3 bye true br fly]

puts "======CONTROL FLOW 1======"
strings.each do |s|
  next if ('0'..'9').include? s
  break if s == "br"
  puts s
end

puts "======CONTROL FLOW 2======"
i = 0
while i < strings.length
  puts strings[i]
  i += 1
  redo if strings[i] == "true"
end
