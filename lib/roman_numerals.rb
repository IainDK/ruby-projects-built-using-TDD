class RomanNumerals

  def convert(num)
    result = ""
    while num >= 10
      result << "X"
      num -= 10
    end
    while num >= 9
      result << "IX"
      num -= 9
    end
    while num >= 5
      result << "V"
      num -= 5
    end
    while num >= 4
      result << "IV"
      num -= 4
    end
      result << "I" * num
  end
end
