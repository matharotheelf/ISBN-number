class ISBNTen
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def valid?
    string_length_thirteen? && correct_dashes? && serial_valid?
  end

  private

  def string_length_thirteen?
    @number.is_a?(String) && @number.length == 13
  end

  def make_array
    arry = @number.split('')
    arry.reject.with_index { |_e, i| [1, 5, 11].include? i }
  end

  def convert_digit(digit, index)
    if index == 9 && digit == 'X'
      10
    else
      digit.to_i
    end
  end

  def serial_valid?
    total = 0
    make_array.each_with_index do |item, index|
      total += convert_digit(item, index) * (10 - index)
    end
    total % 11 == 0
  end

  def correct_dashes?
    @number[1] == '-' && @number[5] == '-' && @number[11] == '-'
  end
end
