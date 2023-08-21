# frozen_string_literal: true

require 'digest'

module Authentication
  def login(_username, password, password_confirm)
    return { error: 'mismatch' } if password != password_confirm
    return { error: 'too short' } if password_confirm.length < 8

    common_passwords = %w[123456 password 12345678 qwerty 12345 123456789 football 1234
                          1234567 baseball welcome 1234567890 abc123 111111 1qaz2wsx dragon master monkey letmein login princess qwertyuiop solo passw0rd starwars]

    common_passwords.each { |pass| return { error: 'common password' } if password == pass }
    hash_pass = Digest::SHA256.hexdigest password
    { ok: hash_pass }
  end

  def logout(username)
    puts "User #{username} logged out"
  end
end

class User
  attr_reader :username

  include Authentication

  def initialize(username)
    @username = username
  end
end

class Admin
  attr_reader :username

  include Authentication

  def initialize(username)
    @username = username
  end
end

def main(user)
  puts 'Choose function:'
  puts '1. Login'
  puts '2. Logout'

  print 'Choice: '
  choice = gets.chomp
  case choice
  when '1'
    user = login_func
    main(user)
  when '2'
    if user.nil?
      puts 'There are no currently user logged in'
    else
      logout_func(user)
    end
  else
    'No proper function.'
  end
end

def login_func
  puts 'Which type do you want to log in?'
  puts '1. User'
  puts '2. Admin'
  print 'Choice: '
  choice = gets.chomp
  case choice
  when '1'
    login_user
  when '2'
    login_admin
  else
    'No proper function.'
  end
end

def login_user
  puts '--- Login User ---'
  puts 'Enter your name:'
  name = gets.chomp

  user = User.new(name)

  puts 'Enter your password:'
  password = gets.chomp
  puts 'Enter confirm password:'
  confirm_password = gets.chomp

  result = user.login(name, password, confirm_password)

  if result.key?(:error)
    puts "Login fail because your password #{result[:error]}. Please try again."
    login_user
  else
    puts "Login success with hashed password: #{result[:ok]}"
  end

  user
end

def login_admin
  puts '--- Login Admin ---'
  puts 'Enter your name:'
  name = gets.chomp

  admin = Admin.new(name)

  puts 'Enter your password:'
  password = gets.chomp
  puts 'Enter confirm password:'
  confirm_password = gets.chomp

  result = admin.login(name, password, confirm_password)

  if result.key?(:error)
    puts "Login fail because your password #{result[:error]}. Please try again."
    login_admin
  else
    puts "Login success with hashed password: #{result[:ok]}"
  end

  admin
end

def logout_func(user)
  user.logout(user.username)
end

user = nil
main(user)
