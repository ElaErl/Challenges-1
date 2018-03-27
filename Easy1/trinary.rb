class Trinary
  attr_reader :array

  def initialize(number)
      @array = number.to_i.digits
  end

  def to_decimal
    array.map.with_index do |num, ind|
      num * (3**ind)
    end.reduce(:+)
  end
end