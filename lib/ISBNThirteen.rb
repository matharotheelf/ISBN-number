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
    arry = @number.split('')
    arry_no_dash = arry.reject.with_index { |_e, i| [3, 5, 9, 15].include? i }
    arry_no_dash.each_with_index do |item, index|
      total += if index.even?
                 item.to_i
               else
                 item.to_i * 3
               end
    end
    total % 10 == 0
  end

  def correct_dashes?
    @number[3] == '-' && @number[5] == '-' && @number[9] == '-' && @number[15] == '-'
  end

  def string_length_seventeen?
    @number.is_a?(String) && @number.length == 17
  end
end
