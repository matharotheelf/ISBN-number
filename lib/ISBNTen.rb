class ISBNTen
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def valid?
    @number.is_a?(String) && @number.length == 13 && @number[1] == '-' && @number[5] == '-'
  end
end
