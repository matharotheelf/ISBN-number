class ISBNThirteen
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def valid?
    string_length_seventeen? && correct_dashes? && serial_valid?
  end

  private

  def serial_valid?
    total = 0
    make_array.each_with_index do |item, index|
      total += weighted_value(item, index)
    end
    total % 10 == 0
  end

  def weighted_value(digit, index)
    if index.even?
      digit.to_i
    else
      digit.to_i * 3
    end
  end

  def make_array
    arry = @number.split('')
    arry.reject.with_index { |_e, i| [3, 5, 9, 15].include? i }
  end

  def correct_dashes?
    @number[3] == '-' && @number[5] == '-' && @number[9] == '-' && @number[15] == '-'
  end

  def string_length_seventeen?
    @number.is_a?(String) && @number.length == 17
  end
end
