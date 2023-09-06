require './database'
require 'bcrypt'

class User
  attr_accessor :email, :password, :first_name, :last_name

  def initialize(email, password, first_name, last_name, database_name = 'development_database.db')
    @database = Database.new(database_name)
    @email = email
    @password = password
    @first_name = first_name
    @last_name = last_name
  end

  def format_info
    formated_email = email.downcase
    hashed_password = BCrypt::Password.create(password)
    name = "#{first_name} #{last_name}"
    @user_params = { email: formated_email, password: hashed_password, name: name }
  end

  def create_user
    format_info
    @database.insert_account(@user_params)
  end

  def update_user
    format_info
    @database.update_account(@user_params)
  end
end
