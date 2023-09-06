require './database'

class Address
  attr_accessor :city, :street

  def initialize(city, street, database_name = 'development_database.db')
    @database = Database.new(database_name)
    @city = city
    @street = street
  end

  def print_user_info_and_address(user)
    if @database.find_account(user.email)
      puts "Email: #{user.email}, Name: #{"#{user.first_name} #{user.last_name}"}, City: #{city}, Street: #{street}"
    else
      puts "City: #{city}, Street: #{street}"
    end
  end
end
