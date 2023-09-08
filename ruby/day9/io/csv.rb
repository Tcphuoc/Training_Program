require 'csv'
file = CSV.open('contacts.csv', 'w', headers: true) do |csv|
  csv << ['Name', 'Email', 'Phone']
  csv << ['John', 'john@example.com', '555-1234']
  csv << ['Alice', 'alice@example.com', '555-5678']
  csv << ['Bob', 'bob@example.com', '555-9876']
end

csv = CSV.read('contacts.csv', return_headers: true)
csv.each_with_index do |row, index|
  next if index == 0
  puts "Name: #{row[0]}, Email: #{row[1]}, Phone: #{row[2]}"
end
