require './book.rb'
require './news.rb'
require './magazine.rb'

$documents = []
def add_document
  document_a = Document.new("D1", "NXB Thanh Niên", 20, 8000)
  book_a = Book.new("B1", "NXB Thanh Niên", 3, 10000, "Nguyễn Văn A", 100)
  magazine_a = Magazine.new("M1", "NXB Trẻ", 15, 12000, "101A", "06/2020") 
  news_a = News.new("N1", "NXB Trẻ", 30, 15000, "15/02/2021")

  $documents << document_a << book_a << news_a << magazine_a
end

add_document()

def display_info
  puts "Danh sách các tài liệu:"
  $documents.each do |doc|
    puts doc.information
  end
end

display_info()

def calc_rental_fee
  sum = 0
  $documents.each do |doc|
    sum += doc.rental_fee(2)
    puts "Số tiền thuê #{doc.id}: #{doc.rental_fee(2)}"
  end
  puts "Tổng tiền thuê sách: #{sum} đồng"
end

calc_rental_fee()
