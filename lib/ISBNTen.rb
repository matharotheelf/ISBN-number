class ISBNTen
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def valid?
    true
  end
end
