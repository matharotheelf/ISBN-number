require 'ISBNTen'

describe ISBNTen do
  describe '#number' do
    it 'saves a number to object when initialised' do
      isbn = ISBNTen.new('3-598-21508-8')
      expect(isbn.number).to eq('3-598-21508-8')
    end
  end

  describe '#valid?' do
    it 'returns true when valid ISBNTen number is input' do
      isbn = ISBNTen.new('3-598-21508-8')
      expect(isbn.valid?).to eq(true)
    end

    it 'returns false when non string input' do
      isbn = ISBNTen.new(nil)
      expect(isbn.valid?).to eq(false)
    end

    it 'returns false when string input of incorrect length' do
      isbn = ISBNTen.new('notISBN')
      expect(isbn.valid?).to eq(false)
    end

    it 'returns false when string input without dash in the second place' do
      isbn = ISBNTen.new('3p598-21508-8')
      expect(isbn.valid?).to eq(false)
    end

    it 'returns false when string input without dash in the sixth place' do
      isbn = ISBNTen.new('3-598p21508-8')
      expect(isbn.valid?).to eq(false)
    end

    it 'returns false when string input without dash in the twelfth place' do
      isbn = ISBNTen.new('3-598-21508p8')
      expect(isbn.valid?).to eq(false)
    end

    it 'returns false when string input without valid ISBN number' do
      isbn = ISBNTen.new('3-598-21508-0')
      expect(isbn.valid?).to eq(false)
    end

    it 'returns true when valid ISBN number and X numeral check digit' do
      isbn = ISBNTen.new('3-598-21507-X')
      expect(isbn.valid?).to eq(true)
    end

    it 'returns false when string input with X numeral before check digit' do
      isbn = ISBNTen.new('3-598-2150X-4')
      expect(isbn.valid?).to eq(false)
    end
  end

  describe '#convert_to_ISBN13' do
    it 'can convert valid ISBN10 to ISBN13' do
      isbnten = ISBNTen.new('3-598-21507-X')
      expect(isbnten.convert_to_ISBN13).to eq('978-3-598-21507-0')
    end
  end
end
