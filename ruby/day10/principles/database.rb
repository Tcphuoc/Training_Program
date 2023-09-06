require 'sqlite3'

class Database
  attr_accessor :database_name

  def initialize(database_name)
    @database_name = database_name
  end

  def insert_account(user_params)
    return puts 'Email already exists, please choose another!' if account_existed?(user_params[:email])

    # Lưu user account vào database
    find_database_instance.execute('INSERT INTO users (email, password, name) VALUES (:email, :password, :name)',user_params)
    find_database_instance.close
  end

  def update_account(user_params)
    return puts 'Email does not exists!' unless account_existed?(user_params[:email])

    # Update user account trong database
    find_database_instance.execute('UPDATE users SET password = :password, name = :name WHERE email = :email',user_params)
    find_database_instance.close
  end

  def find_account(email)
    users = find_database_instance.execute('SELECT * FROM users WHERE email = :email', email: email)
    users.first
  end

  private

  def find_database_instance
    SQLite3::Database.new(database_name)
  end

  def account_existed?(email)
    return true if find_account(email)
  end
end
