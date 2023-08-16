# frozen_string_literal: true

require './book'
require './news'
require './magazine'
require './renter'

documents = []
def add_document(documents)
  document_a = Document.new('D1', 'NXB Thanh Niên', 20, 8000)
  book_a = Book.new('B1', 'NXB Thanh Niên', 3, 10_000, 'Nguyễn Văn A', 100)
  magazine_a = Magazine.new('M1', 'NXB Trẻ', 15, 12_000, '101A', '06/2020')
  news_a = News.new('N1', 'NXB Trẻ', 30, 15_000, '15/02/2021')

  documents << document_a << book_a << news_a << magazine_a
end

add_document(documents)

def display_info(documents)
  puts 'Danh sách các tài liệu:'
  documents.each do |doc|
    puts doc.information
  end
end

display_info(documents)

def calc_rental_fee(documents)
  sum = 0
  documents.each do |doc|
    sum += doc.rental_fee(2)
    puts "Số tiền thuê #{doc.id}: #{doc.rental_fee(2)}"
  end
  puts "Tổng tiền thuê sách: #{sum} đồng"
end

calc_rental_fee(documents)

puts

phuoc = Renter.new('Phước', 'tcphuoc0511@gmail.com', '0909090909', documents)
phuoc.add_document(Book.new('B2', 'NXB Kim Đồng', 7, 10_000, 'Nguyễn Văn C', 100))
phuoc.total_fee(2)
