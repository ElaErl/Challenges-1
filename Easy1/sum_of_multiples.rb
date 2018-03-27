class SumOfMultiples
  def self.to(num)
    SumOfMultiples.new.to(num)
  end

  def initialize(*multiples)
    @multiples = multiples.empty? ? [3, 5] : multiples
  end

  def to(num)
    result = []
    @multiples.each do |n|
      0.upto(num - 1) do |m|
        result << m if (m % n == 0) && !result.include?(m)
      end
    end
    result.reduce(:+)
  end
end


p SumOfMultiples.to(10)
p SumOfMultiples.new(7, 13, 17).to(20)


