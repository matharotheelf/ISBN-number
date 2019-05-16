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

    it 'returns true when string input with valid ISBN number and X numberal' do
      isbn = ISBNTen.new('3-598-2150X-4')
      expect(isbn.valid?).to eq(true)
    end
  end
end
