require './database'

class Address
  attr_accessor :city, :street

  def initialize(city, street)
    @city = city
    @street = street
  end

  def print_user_info_and_address(user)
    puts "#{user.find_user(user.email)}City: #{city}, Street: #{street}"
  end
end
