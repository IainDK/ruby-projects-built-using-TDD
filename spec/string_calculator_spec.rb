require 'string_calculator'

describe 'StringCalculator' do

  let(:string_calculator) { (StringCalculator.new) }

  describe 'add(string)' do
    it 'should return zero if the string is empty' do
      expect(string_calculator.add("")).to eq 0
    end
  end
end
