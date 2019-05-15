class ISBNTen
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def valid?
    @number.is_a?(String) && @number.length == 13 && correct_dashes?
  end

  private

  def correct_dashes?
    @number[1] == '-' && @number[5] == '-' && @number[11] == '-'
  end
end
