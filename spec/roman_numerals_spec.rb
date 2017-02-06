require 'roman_numerals'

describe 'RomanNumerals' do

  let(:rom_num) { (RomanNumerals.new) }

  describe 'convert(num)' do

    it "should return 'I' when num is equal to 1" do
      expect(rom_num.convert(1)).to eq 'I'
    end

    it "should return 'II' when num is equal to 2" do
      expect(rom_num.convert(2)).to eq 'II'
    end

    it "should return 'IV' when num is equal to 5" do
      expect(rom_num.convert(5)).to eq 'V'
    end

    it "should return 'VIII' when num is equal to 8" do
      expect(rom_num.convert(8)).to eq 'VIII'
    end

    it "should return 'X' when num is equal to 10" do
      expect(rom_num.convert(10)).to eq 'X'
    end

    it "should return 'XV' when num is equal to 15" do
      expect(rom_num.convert(15)).to eq 'XV'
    end

    it "should return 'XX' when num is equal to 20" do
      expect(rom_num.convert(20)).to eq 'XX'
    end

    it "should return 'XXVIII' when num is equal to 28" do
      expect(rom_num.convert(28)).to eq 'XXVIII'
    end

    it "should return 'IV' when num is equal to 4" do
      expect(rom_num.convert(4)).to eq 'IV'
    end

    it "should return 'XIV' when num is equal to 14" do
      expect(rom_num.convert(14)).to eq 'XIV'
    end

    it "should return 'XXVIII' when num is equal to 28" do
      expect(rom_num.convert(28)).to eq 'XXVIII'
    end

    it "should return 'IX' when num is equal to 9" do
      expect(rom_num.convert(9)).to eq 'IX'
    end

    it "should return 'XXXIV' when num is equal to 34" do
      expect(rom_num.convert(34)).to eq 'XXXIV'
    end

    it "should return 'XXXIX' when num is equal to 39" do
      expect(rom_num.convert(39)).to eq 'XXXIX'
    end
  end
end
