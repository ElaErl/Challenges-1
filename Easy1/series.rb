class Series
  attr_reader :array

  def initialize(string)
    @array = string.chars.map(&:to_i)
  end

  def slices(num)
    raise ArgumentError if num > array.size
    result = []
    array.each_with_index do |n, ind|
      break if ind > (array.size - num)
      result << array.slice(ind, num)
    end
    result
  end
end