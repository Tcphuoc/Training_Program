require './document.rb'
class Magazine < Document
  attr_accessor :number_publish, :month_publish

  def initialize(id, publisher, copies, unit, number_publish, month_publish)
		super(id, publisher, copies, unit)
		@number_publish = number_publish
    @month_publish = month_publish
	end

  def rental_fee(hours)
    super + 10000
  end

  def information
    super + " - #{@number_publish} - #{month_publish}"
  end
end
