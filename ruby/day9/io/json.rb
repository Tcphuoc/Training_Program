require 'csv'
require 'json'

json = JSON.parse(File.read('employee.json'), {symbolize_names: true})
output = CSV.generate do |csv|
  csv << json[:employee].keys
  csv << json[:employee].values
end

convert = proc{ |header| "#{header.capitalize}: " }
puts CSV.parse(output, headers: true, return_headers: true, header_converters: convert)
