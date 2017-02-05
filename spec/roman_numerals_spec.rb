require 'roman_numerals'

describe 'RomanNumerals' do

  let(:rom_num) { (RomanNumerals.new) }

  describe 'convert(num)' do

    it "should return 'I' when num is 1" do
      expect(rom_num.convert(1)).to eq 'I'
    end

    it "should return 'II' when num is 2" do
      expect(rom_num.convert(2)).to eq 'II'  
    end
  end

end
