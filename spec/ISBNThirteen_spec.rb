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
  end
end
