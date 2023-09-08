class OrderProcessor
  def process_order(order)
    @customer = order.customer
    @items = order.items

    check_item
    check_inventory

    # Tạo hóa đơn
    invoice = create_invoice(total_price)

    # Gửi email xác nhận
    send_confirmation_email(invoice)
  end

  private

  def total_price
    total = 0
    @items.each do |item|
      total += item.price * item.quantity
    end
    total -= total * @customer.discount_percent if @customer.has_discount?
  end

  def check_item
    raise 'Không có mặt hàng nào!' if @items.empty?
  end

  def check_inventory
    @items.each { |item| raise "Không đủ hàng trong kho cho #{item.name}" unless item.is_available? }
  end

  def create_invoice(total_price)
    # Tạo hóa đơn và lưu vào cơ sở dữ liệu
    # ...
  end

  def send_confirmation_email(invoice)
    # Gửi email xác nhận cho khách hàng
    # ...
  end
end

class Order
  attr_accessor :customer, :items

  def initialize(customer, items)
    @customer = customer
    @items = items
  end
end

class Customer
  attr_accessor :has_discount, :discount_percent

  def initialize(has_discount, discount_percent)
    @has_discount = has_discount
    @discount_percent = discount_percent
  end

  def has_discount?
    has_discount
  end
end

class Item
  attr_accessor :name, :price, :quantity, :available_quantity

  def initialize(name, price, quantity, available_quantity)
    @name = name
    @price = price
    @quantity = quantity
    @available_quantity = available_quantity
  end

  def is_available?
    available_quantity >= quantity
  end
end
