class Luhn
  def initialize(num)
    @num = num # 1219
  end

  def addends
    result = []
    @num.digits.each_with_index do |digit, ind|
      if ind % 2 != 0 && digit < 5
        result << digit * 2
      elsif ind % 2 != 0
        result << (digit * 2 - 9)
      else
        result << digit
      end
    end
    result.reverse!
  end

  def checksum
    addends.reduce(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(num)
    new_number = 0
    0.upto(9) do |n|
      string = (num.to_s + n.to_s)
      new_number = string.to_i
      break if Luhn.new(new_number).valid?
    end
    new_number
  end
end




