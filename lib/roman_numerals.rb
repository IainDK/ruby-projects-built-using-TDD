class RomanNumerals

  INTEGER_TO_RN_CONVERTER = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}

  def convert(num)
    result = ""
    INTEGER_TO_RN_CONVERTER.each do |int, rn|
    while num >= int
      result << rn
      num -= int
      end
    end
    result
  end
end
