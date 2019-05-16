class ISBNTen
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def valid?
    string_length_thirteen? && correct_dashes? && calculator
  end

  private

  def string_length_thirteen?
    @number.is_a?(String) && @number.length == 13
  end

  def make_array
    arry = @number.split('')
    arry.reject.with_index { |_e, i| [1, 5, 11].include? i }
  end

  def calculator
    total = 0
    make_array.each_with_index do |item, index|
      digit = if item == 'X'
                10
              else
                item.to_i
              end
      total += digit * (10 - index)
    end
    total % 11 == 0
  end

  def correct_dashes?
    @number[1] == '-' && @number[5] == '-' && @number[11] == '-'
  end
end
