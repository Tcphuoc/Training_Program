class Renter
  attr_accessor :name, :email, :phone, :types

  def initialize(name, email, phone, types)
    @name = name
    @email = email
    @phone = phone
    @types = types
  end

  def add_document (doc)
    types << doc
  end

  def total_fee (hours)
    puts "Tóm tắt tiền thuê của người dùng #{name}"
    sum = 0
    types.each do |doc|
      sum += doc.rental_fee(hours)
      puts "Số tiền thuê #{doc.id} trong #{hours} giờ: #{doc.rental_fee(hours)}"
    end
    sum
  end
end