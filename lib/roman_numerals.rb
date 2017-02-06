class RomanNumerals

  def convert(num)
    result = ""
    while num >= 10
      result << "X"
      num -= 10
    end
    while num >= 5
      result << "V"
      num -= 5
    end
      result << "I" * num
  end
end
