class ISBNThirteen
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def valid?
    string_length_seventeen? && correct_dashes?
  end

  private

  def correct_dashes?
    @number[3] == '-' && @number[5] == '-' && @number[9] == '-' && @number[15] == '-'
  end

  def string_length_seventeen?
    @number.is_a?(String) && @number.length == 17
  end
end
