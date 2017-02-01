require 'string_calculator'

describe 'StringCalculator' do

  let(:string_calculator) { (StringCalculator.new) }

  describe 'add(string)' do

    it 'should return zero if the string is empty' do
      expect(string_calculator.add("")).to eq 0
    end

    it 'should return the number as an integer if the string contains only one number' do
      expect(string_calculator.add("1,")).to eq 1
    end

    it 'should return the number as an integer if the string contains only one number' do
      expect(string_calculator.add("9,")).to eq 9
    end

    it 'should convert all numbers found within the string to integers and add them together' do
      expect(string_calculator.add("1, 3")).to eq 4
    end

    it 'should convert all numbers found within the string to integers and add them together' do
      expect(string_calculator.add("2, 6")).to eq 8
    end

    it 'should work for numbers that contain more than one digit' do
      expect(string_calculator.add("10, 6,")).to eq 16
    end

    it 'should work for numbers that contain more than one digit' do
      expect(string_calculator.add("10, 22,")).to eq 32
    end

    it 'should work for multiple numbers, of varying digit lengths' do
      expect(string_calculator.add("1, 5, 12, 16, 23, 27, 101, 202, 1050")).to eq 1437
    end

    it 'should raise an error if a negative number is inputted' do
      expect {string_calculator.add("-2, 6")}.to raise_error 'You cannot input a negative number.'
    end
  end
end
