class ISBNTen
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def valid?
    @number.is_a?(String) && @number.length == 13 && correct_dashes? && calculator
  end

  private

  def calculator
    arry = @number.split('')
    arry_no_dash = arry.reject.with_index { |_e, i| [1, 5, 11].include? i }
    total = 0
    arry_no_dash.each_with_index do |item, index|
      total += item.to_i * (10 - index)
    end
    total % 11 == 0
  end

  def correct_dashes?
    @number[1] == '-' && @number[5] == '-' && @number[11] == '-'
  end
end
