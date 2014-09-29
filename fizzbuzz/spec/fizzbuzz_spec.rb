describe 'FizzBuzz' do
  context 'knows a number is devisible by' do
    it '3' do
      expect(is_devisible_by_three?(3)).to be_true
    end
    it '5' do
      expect(is_devisible_by_five?(5)).to be_true
    end
    it '15' do
      expect(is_devisible_by_fifteen?(15)).to be_true
    end
  end

  context 'knows a number is not deivisible by' do
    it '3' do
      expect(is_devisible_by_three?(3)).to be_false
    end
    it '5' do
      expect(is_devisible_by_five?(5)).to be_false
    end
    it '15' do
      expect(is_devisible_by_fifteen?(15)).to be_false
    end
  end

  context 'while playing the game' do
    it 'the number' do
      expect(fizzbuzz(1)).to eq 1
    end
    it 'Fizz' do
      expect(fizzbuzz(3)).to eq 'Fizz'
    end
    it 'Buzz' do
      expect(fizzbuzz(5)).to eq 'Buzz'
    end
    it 'FizzBuzz' do
      expect(fizzbuzz(15)).to eq 'FizzBuzz'
    end
  end
end
