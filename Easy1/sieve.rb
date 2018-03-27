class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    range = (2..limit).to_a
    range.each do |num|
      range.reject!{|n| n % num == 0 && num != n}
    end
    range
  end
end


