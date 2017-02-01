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

    it 'should remove all illegal characters from the string and add the numbers together' do
          expect(string_calculator.add("1\n2, 3")).to eq 6
    end

    it 'should remove all illegal characters from the string and add the numbers together' do
          expect(string_calculator.add("1\n2, 3\n\n4\n2, 8, 1, \n\n\n9\n10\n10, 50")).to eq 100
    end

    it 'should work for multiple numbers, upto the value of 1000' do
      expect(string_calculator.add("1, 5, 12, 16, 23, 27, 101, 202, 1000")).to eq 1387
    end

    it 'should raise an error if a negative number is inputted; it should also display the negative number' do
      expect {string_calculator.add("-2, 6")}.to raise_error 'You cannot input a negative number: [-2]'
    end

    it 'should raise an error if a negative number is inputted; it should display all negative numbers if more than one is entered' do
      expect {string_calculator.add("-2, 6, 10, -4, -16")}.to raise_error 'You cannot input a negative number: [-2, -4, -16]'
    end

    it 'should ignore all numbers higher than 1000' do
      expect(string_calculator.add("1, 10, 100, 1001, 1234")).to eq 111
    end

    it 'should allow multiple delimiters' do
      expect(string_calculator.add("//[*][%]\n1*2%3")).to eq 6
    end

    it 'should allow multiple delimiters of varying lengths' do
      expect(string_calculator.add("//[***][%%%]\n1***2***3%%%4***5%%%%%%%10*************20")).to eq 45
    end
  end
end
