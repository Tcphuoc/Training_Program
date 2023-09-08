require 'json'

json = JSON.parse(File.read('employee.json'))
employee = json['employee']
puts "Name: #{employee['name']}, Salary: #{employee['salary']}, Married: #{employee['married']}"
