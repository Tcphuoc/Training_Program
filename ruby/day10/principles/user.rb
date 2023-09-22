require './database'
require 'bcrypt'

class User
  attr_accessor :email, :password, :first_name, :last_name

  def initialize(email, password, first_name, last_name, database_name = 'development_database.db')
    @database = Database.new(database_name).find_database_instance
    @email = email
    @password = password
    @first_name = first_name
    @last_name = last_name
  end

  def user_params
    formated_email = email.downcase
    hashed_password = BCrypt::Password.create(password)
    name = "#{first_name} #{last_name}"
    user_info = { email: formated_email, password: hashed_password, name: name }
  end

  def create_user
    return puts 'Email already exists, please choose another!' if user_existed?(user_params[:email])

    # Lưu user account vào database
    @database.execute('INSERT INTO users (email, password, name) VALUES (:email, :password, :name)',user_params)
    @database.close
  end

  def update_user
    return puts 'Email does not exists!' unless user_existed?(user_params[:email])

    # Update user account trong database
    @database.execute('UPDATE users SET password = :password, name = :name WHERE email = :email',user_params)
    @database.close
  end

  def find_user(email)
    users = @database.execute('SELECT * FROM users WHERE email = :email', email: email)
    user = users.first
    "Email: #{user[1]}, Name: #{user[3]}, " if user
  end

  def user_existed?(email)
    return true if find_user(email)
  end
end
