def hello_world
  puts "welcome"
  yield("Voyager")
  puts "bye bye"
end

hello_world{ |company| puts "My company is #{company}" }
