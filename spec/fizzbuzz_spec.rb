require 'fizzbuzz'

describe FizzBuzz do
  let(:game) { (FizzBuzz.new) }

  describe 'play(number)' do
    it 'expects that if the supplied number is divisible by fifteen, the result will be FizzBuzz' do
      expect(game.play(30)).to eq 'FizzBuzz'
    end

    it 'expects that if the supplied number is divisible by five, the result will be Buzz' do
      expect(game.play(10)).to eq 'Buzz'
    end

    it 'expects that if the supplied number is divisible by three, the result will be Fizz' do
      expect(game.play(9)).to eq 'Fizz'
    end

    it 'expects that if the supplied number is not divisible by three, five or fifteen, the number itself will be returned.' do
      expect(game.play(8)).to eq 8
    end

    it 'expects that if the supplied number is not divisible by three, the result will be false' do
      expect(game.divisble_by_three?(5)).to be false
    end
  end

  describe '#divisble_by_three?(number)' do
    it 'expects that if the supplied number is divisible by three, the result will be true' do
      expect(game.divisble_by_three?(9)).to be true
    end

    it 'expects that if the supplied number is not divisible by three, the result will be false' do
      expect(game.divisble_by_three?(5)).to be false
    end
  end

  describe '#divisble_by_five?(number)' do
    it 'expects that if the supplied number is divisible by five, the result will be true' do
      expect(game.divisible_by_five?(10)).to be true
    end

    it 'expects that if the supplied number is not divisible by five, the result will be false' do
      expect(game.divisible_by_five?(7)).to be false
    end
  end

  describe '#divisble_by_fifteen?(number)' do
    it 'expects that if the supplied number is divisible by fifteen, the result will be true' do
      expect(game.divisible_by_fifteen?(30)).to be true
    end

    it 'expects that if the supplied number is not divisible by fifteen, the result will be false' do
      expect(game.divisible_by_fifteen?(17)).to be false
    end
  end

  describe '#divisble_by?(number, divisor)' do
    it 'expects that if the supplied number is divisible by the divisor, the result will be true' do
      expect(game.divisible_by?(20, 5)).to be true
    end

    it 'expects that if the supplied number is not divisible by the divisor, the result will be false' do
      expect(game.divisible_by?(9, 4)).to be false
    end
  end
end
