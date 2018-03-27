class Octal
  attr_reader :array

  def initialize(number)
      @array = number.to_i.digits
  end

  def to_decimal
    return 0 if array.include?(8) || array.include?(9)
    array.map.with_index do |num, ind|
      num * (8**ind)
    end.reduce(:+)
  end
end
