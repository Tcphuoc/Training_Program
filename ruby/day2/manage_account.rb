class AccountManage 
  def initialize(id_account, name_account, amount_account)
    @name_account = name_account
    @id_account = id_account
    @amount_account = amount_account
  end
  
  def deposit(amount)
    if amount < 0
      puts "Số tiền nạp không thể âm"
      return
    end
      
    @amount_account += amount
    puts "Số dư hiện tại: #{@amount_account}" 
  end
  
  def withdraw(amount)
    if amount > @amount_account
     puts "Số dư không đủ để thực hiện"
      return
    end

    @amount_account -= amount
    puts "Số dư hiện tại: #{@amount_account}" 
  end
  
  def statement(id_account, name_account)
    if check_info(id_account, name_account)
      puts "Chủ tài khoản: #{@name_account}"
      puts "Số dư tài khoản: #{@amount_account}"
    else
      puts "Thông tin không trùng khớp"
    end
  end
  
  def update_name(id_account, old_name, new_name)
    if(old_name == new_name)
      puts "Tên không có sự thay đổi. Vui lòng thử lại"
      return
    end
  
    @name_account = new_name if check_info(id_account, old_name)
    statement(@id_account, @name_account)
  end

  private
  def check_info(id_account, name_account)
    id_account == @id_account && name_account == @name_account
  end
end
