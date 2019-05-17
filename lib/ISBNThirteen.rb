class ISBNThirteen
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def valid?
    @number.is_a?(String) && @number.length == 17 && @number[3] == '-' && @number[5] == '-'
  end
end
