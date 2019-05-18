# Class to store, verify, and convert ISBN-10 codes
class ISBNTen
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def valid?
    string_length_thirteen? && correct_dashes? && serial_valid?
  end

  def convert_to_isbn13
    arry = [9, 7, 8]
    arry += make_array[0..-2]
    arry_with_check_digit = add_isbn13_check_digit(arry)
    create_isbn13_string(arry_with_check_digit)
  end

  private

  def create_isbn13_string(arry)
    arry.insert(3, '-')
    arry.insert(5, '-')
    arry.insert(9, '-')
    arry.insert(15, '-')
    arry.join('')
  end

  def add_isbn13_check_digit(arry)
    total = 0
    arry.each_with_index do |item, index|
      total += weighted_value_isbn13(item, index)
    end
    check_digit = (10 - total % 10) % 10
    arry.push(check_digit)
  end

  def weighted_value_isbn13(digit, index)
    if index.even?
      digit.to_i
    else
      digit.to_i * 3
    end
  end

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
    (total % 11).zero?
  end

  def correct_dashes?
    @number[1] == '-' && @number[5] == '-' && @number[11] == '-'
  end
end
