require './document.rb'

class News < Document
  attr_accessor :day_publish

  def initialize(id, publisher, copies, unit, day_publish)
		super(id, publisher, copies, unit)
		@day_publish = day_publish
	end

  def rental_fee(hours)
    hours + 20000
  end

  def information
    super + " - #{@day_publish}"
  end
end
