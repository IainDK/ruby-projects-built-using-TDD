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

    it "should return 'XL' when num is equal to 40" do
      expect(rom_num.convert(40)).to eq 'XL'
    end

    it "should return 'XLIV' when num is equal to 44" do
      expect(rom_num.convert(44)).to eq 'XLIV'
    end

    it "should return 'L' when num is equal to 50" do
      expect(rom_num.convert(50)).to eq 'L'
    end

    it "should return 'LV' when num is equal to 55" do
      expect(rom_num.convert(55)).to eq 'LV'
    end

    it "should return 'LX' when num is equal to 60" do
      expect(rom_num.convert(60)).to eq 'LX'
    end

    it "should return 'LXX' when num is equal to 70" do
      expect(rom_num.convert(70)).to eq 'LXX'
    end

    it "should return 'LXXX' when num is equal to 80" do
      expect(rom_num.convert(80)).to eq 'LXXX'
    end

    it "should return 'XC' when num is equal to 90" do
      expect(rom_num.convert(90)).to eq 'XC'
    end

    it "should return 'XCIX' when num is equal to 99" do
      expect(rom_num.convert(99)).to eq 'XCIX'
    end

    it "should return 'C' when num is equal to 100" do
      expect(rom_num.convert(100)).to eq 'C'
    end

    it "should return 'CXXIV' when num is equal to 124" do
      expect(rom_num.convert(124)).to eq 'CXXIV'
    end

    it "should return 'CC' when num is equal to 200" do
      expect(rom_num.convert(200)).to eq 'CC'
    end

    it "should return 'CCC' when num is equal to 300" do
      expect(rom_num.convert(300)).to eq 'CCC'
    end

    it "should return 'CD' when num is equal to 400" do
      expect(rom_num.convert(400)).to eq 'CD'
    end

    it "should return 'CDL' when num is equal to 450" do
      expect(rom_num.convert(450)).to eq 'CDL'
    end

    it "should return 'D' when num is equal to 500" do
      expect(rom_num.convert(500)).to eq 'D'
    end

    it "should return 'DC' when num is equal to 600" do
      expect(rom_num.convert(600)).to eq 'DC'
    end

    it "should return 'DCL' when num is equal to 650" do
      expect(rom_num.convert(650)).to eq 'DCL'
    end

    it "should return 'DCC' when num is equal to 700" do
      expect(rom_num.convert(700)).to eq 'DCC'
    end

    it "should return 'DCCC' when num is equal to 800" do
      expect(rom_num.convert(800)).to eq 'DCCC'
    end

    it "should return 'CM' when num is equal to 900" do
      expect(rom_num.convert(900)).to eq 'CM'
    end

    it "should return 'CMXCIX' when num is equal to 999" do
      expect(rom_num.convert(999)).to eq 'CMXCIX'
    end

    it "should return 'M' when num is equal to 1000" do
      expect(rom_num.convert(1000)).to eq 'M'
    end

    it "should return 'MCCXXXIV' when num is equal to 1234" do
      expect(rom_num.convert(1234)).to eq 'MCCXXXIV'
    end

    it "should return 'MMD' when num is equal to 2500" do
      expect(rom_num.convert(2500)).to eq 'MMD'
    end

    it "should return 'MMMM' when num is equal to 4000" do
      expect(rom_num.convert(4000)).to eq 'MMMM'
    end

    it "should return 'MMMMCMXCIX' when num is equal to 4999" do
      expect(rom_num.convert(4999)).to eq 'MMMMCMXCIX'
    end
  end
end
