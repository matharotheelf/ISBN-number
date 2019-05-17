class ISBNThirteen
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def valid?
    @number.is_a?(String) && @number.length == 17
  end
end
