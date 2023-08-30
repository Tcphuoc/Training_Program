require 'csv'
file = CSV.open('contacts.csv', 'w', headers: true) do |csv|
  csv << ['Name', 'Email', 'Phone']
  csv << ['John', 'john@example.com', '555-1234']
  csv << ['Alice', 'alice@example.com', '555-5678']
  csv << ['Bob', 'bob@example.com', '555-9876']
end

convert = proc{ |header| "#{header}: " }

File.open('contacts.csv') do |file|
  puts CSV.parse(file, headers: true, return_headers: true, header_converters: convert)
end
