require 'ISBNThirteen'

describe ISBNThirteen do
  describe '#number' do
    it 'saves a number when initialised' do
      isbn = ISBNThirteen.new('978-3-598-21507-0')
      expect(isbn.number).to eq('978-3-598-21507-0')
    end
  end

  describe '#valid?' do
    it 'returns true when valid ISBNThirteen number is input' do
      isbn = ISBNThirteen.new('978-3-598-21507-0')
      expect(isbn.valid?).to eq(true)
    end

    it 'returns false when non string input' do
      isbn = ISBNThirteen.new(nil)
      expect(isbn.valid?).to eq(false)
    end

    it 'returns false when string input of incorrect length' do
      isbn = ISBNThirteen.new('notISBN')
      expect(isbn.valid?).to eq(false)
    end

    # it 'returns false when string input without dash in the fourth place' do
    #   isbn = ISBNTen.new('978-3-598-21507-0')
    #   expect(isbn.valid?).to eq(false)
    # end
  end
end
