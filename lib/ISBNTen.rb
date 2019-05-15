class ISBNTen
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def valid?
    if !@number.is_a?(String)
      false
    else
      @number.length == 13
    end
  end
end
