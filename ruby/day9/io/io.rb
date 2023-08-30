file = File.open('sample.txt', 'w')
file.write("Hello, this is line 1.\n")
file.write("This is line 2.\n")
file.write("And this is line 3.\n")
file.close

def read_file(file)
  file.each { |line| puts line }
  file.close
end

read_file(File.open('sample.txt', 'r'))
