class RomanNumerals

  def convert(num)
    result = ""
    if num >= 10
      result << "X"
      num -= 10
    end
    if num >= 5
      result << "V"
      num -= 5
    end
      result << "I" * num
  end
end
