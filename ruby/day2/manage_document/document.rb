class Document
  attr_accessor :id, :publisher, :copies, :unit

  def initialize(id, publisher, copies, unit)
    @id = id
    @publisher = publisher
    @copies = copies
    @unit = unit
  end

  def rental_fee(hours)
    hours * unit
  end

  def information
    "#{@id} - #{@publisher} - #{@copies} - #{unit}"
  end
end
