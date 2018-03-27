class PhoneNumber
  def initialize(number)
    @number = number
  end

  def number
    length = @number.scan(/\d/).size
    digits = @number.scan(/\d/).join
    first_digit = @number.scan(/\d/)[0]

    if @number =~ /\A[^a-z]+\Z/i && length == 10
      digits
    elsif @number =~ /\A[^a-z]+\Z/i && length == 11 &&  first_digit == '1'
      digits[1..10]
    else
      '0000000000'
    end
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end
end
