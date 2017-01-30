require 'fizzbuzz'

describe FizzBuzz do
  let(:game) { (FizzBuzz.new) }

  describe 'divisble_by_three?(number)' do
    it 'expects that if the supplied number is divisible by three, the result will be true' do
      expect(game.divisble_by_three?(9)).to be true
    end

    it 'expects that if the supplied number is not divisible by three, the result will be false' do
      expect(game.divisble_by_three?(5)).to be false
    end
  end

end