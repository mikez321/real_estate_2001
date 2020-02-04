class House
  attr_reader :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    (@price.delete("$")).to_i
  end

end
