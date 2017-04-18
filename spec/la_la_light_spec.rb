require 'la_la_light'

describe 'LaLaLight' do

  let(:lala) { (LaLaLight.new) }

  describe 'logic_string' do

    it "should split the string at the end of the first vowel group" do
      split_array = lala.logic_string("Land")
      expect(split_array[0]).to include "La", "nd"
    end

    it "should treat Y as a vowel" do
      split_array = lala.logic_string("Yolk")
      expect(split_array[0]).to include "Yo", "lk"
    end

    it "should return the whole string, if the word only contains vowels" do
      split_array = lala.logic_string("Ooo")
      expect(split_array[0]).to include "Ooo"
    end

    it "should not split if the word only contains consonants -- the array should be empty" do
      split_array = lala.logic_string("Dr TV")
      expect(split_array[0]).to be nil
    end

    it "should work regardless of the characters being upper or lower case" do
      split_array = lala.logic_string("AauUiiioOoODdDvVeaPoU")
      expect(split_array[0]).to include "AauUiiioOoO", "DdDvVeaPoU"
    end
  end

  describe 'split_string' do

    it "should take the split string and return the first result within the array" do
      expect(lala.split_string("Land")).to eq "La"
    end

    it "should treat Y as a vowel" do
      expect(lala.split_string("Yolk")).to eq "Yo"
    end

    it "should work for vowel sequences" do
      expect(lala.split_string("Moon")).to eq "Moo"
    end

    it "should work for both uppercase and lowercase characters" do
      expect(lala.split_string("Auxiliary")).to eq "Au"
    end

    it "should work with mixed-case strings of all sizes" do
      expect(lala.split_string("AauUiiioOoODdDvVeaPoU")).to eq "AauUiiioOoO"
    end
  end

  describe 'oscar_mishap' do

    it "should print the split string, duplicate it and then print the original string" do
      expect(lala.oscar_mishap("Land")).to eq "La La Land"
    end

    it "should treat Y as a vowel" do
      expect(lala.oscar_mishap("Yolk")).to eq "Yo Yo Yolk"
    end

    it "should work for vowel sequences" do
      expect(lala.oscar_mishap("Moonlight")).to eq "Moo Moo Moonlight"
    end

    it "should work for both uppercase and lowercase characters" do
      expect(lala.oscar_mishap("Auxiliary")).to eq "Au Au Auxiliary"
    end

    it "should work with mixed-case strings of all sizes" do
      expect(lala.oscar_mishap("AauUiiioOoODdDvVeaPoU")).to eq "AauUiiioOoO AauUiiioOoO AauUiiioOoODdDvVeaPoU"
    end
  end
end
