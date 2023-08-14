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
      if(amount > @amount_account)
        puts "Số dư không đủ để thực hiện"
        return
      end
  
      @amount_account -= amount
      puts "Số dư hiện tại: #{@amount_account}" 
    end
  
    def statement(id_account, name_account)
      if id_account == @id_account && name_account == @name_account
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
  
      @name_account = new_name if id_account == @id_account && old_name == @name_account
      statement(@id_account, @name_account)
    end
  end
  
  def create_account
    puts "------Khởi tạo tài khoản------"
    puts "Mã số tài khoản:"
    id_account = gets.chomp
    puts "Tên chủ tài khoản:"
    name_account = gets.chomp
    puts "Số dư tài khoản:"
    amount_account = gets.chomp
    amount_account.each_char do |chr| 
      if !("0".."9").include? chr
        puts "Giá trị không hợp lệ"
        create_account()
      end
    end
  
    return AccountManage.new(id_account, name_account, amount_account.to_i)
  end
  
  def show_statement
    puts "-------Sao kê tài khoản-------"
    puts "Mã số tài khoản:"
    id_account = gets.chomp
    puts "Tên chủ tài khoản:"
    name_account = gets.chomp
    $phuoc.statement(id_account, name_account)
  end
  
  def deposit_money
    puts "-----------Nạp tiền-----------"
    puts "Nhập số tiền muốn nạp:"
    amount_account = gets.chomp
    amount_account.each_char do |chr| 
      if !("0".."9").include? chr
        puts "Giá trị không hợp lệ"
        deposit_money()
      end
    end
    $phuoc.deposit(amount_account.to_i)
  end
  
  def withdraw_money
    puts "-----------Rút tiền-----------"
    puts "Nhập số tiền muốn rút:"
    amount_account = gets.chomp
    amount_account.each_char do |chr| 
      if !("0".."9").include? chr
        puts "Giá trị không hợp lệ"
        withdraw_money()
      end
    end
    $phuoc.withdraw(amount_account.to_i)
  end
  
  $phuoc = create_account()
  show_statement()
  deposit_money()
  withdraw_money()