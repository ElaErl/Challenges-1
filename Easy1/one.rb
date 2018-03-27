class Series
  attr_reader :string
  def initialize(string)
    @array = string.chars.map(&:to_i)
  end

  def slices(num)
    #return "Please, choose a smaller number" if num > @array.size
    result = []
    @array.each_with_index do |n, ind|
      next if ind > (@array.size - num)
      result << @array.slice(ind, num)
    end
    result
  end
end

arr = Series.new('1234')
arr.slices(3)




For example, the string "01234" has the following 3-digit series:

- 012
- 123
- 234

And the following 4-digit series:

- 0123
- 1234