require 'csv'
require 'json'

json = JSON.parse(File.read('employee.json'), {symbolize_names: true})
output = CSV.generate do |csv|
  csv << json[:employee].keys
  csv << json[:employee].values
end

puts output
