require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class RoomTest < Minitest::Test
  def test_it_exists
    house = House.new("$400000", "123 sugar lane")

    assert_instance_of House, house
  end

  def test_it_has_a_price_and_address
    house = House.new("$400000", "123 sugar lane")

    assert_equal 400000, house.price
    assert_equal "123 sugar lane",house.address
  end

  def rooms_can_be_added
    house = House.new("$400000", "123 sugar lane")

    assert_equal [], house.rooms
  end


end

#house.rooms
#=> []

#room_1 = Room.new(:bedroom, 10, '13')
#=> #<Room:0x00007fccd29b5720...>

#room_2 = Room.new(:bedroom, 11, '15')
#=> #<Room:0x00007fccd2985f48...>

#house.add_room(room_1)

#house.add_room(room_2)

#house.rooms
#=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>]
