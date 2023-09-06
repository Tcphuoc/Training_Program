# Vấn đề
# Đang vi phạm nguyên tắc DIP vì class lớn hơn (Printer) đang phụ thuộc class nhỏ hơn (PdfFormatter, HtmlFormatter), cụ thể do trong method print_pdf và print_html đang fit cứng class

class Printer
  def initialize(data, type)
    @data = data
    @type = type
  end

  def print
    @type.new.format(@data)
  end
end

class PdfFormatter
  def format(data)
    # format data to PDF logic 
  end
end

class HtmlFormatter
  def format(data)
    # format data to HTML logic 
  end
end
