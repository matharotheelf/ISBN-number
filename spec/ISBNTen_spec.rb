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
  end
end
