require 'ISBNTen'

describe ISBNTen do
  describe '#number' do
    it 'saves a number to object when initialised' do
      isbn = ISBNTen.new('3​-598-21508-8')
      expect(isbn.number).to eq('3​-598-21508-8')
    end
  end
end
