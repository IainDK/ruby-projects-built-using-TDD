class StringCalculator

def add(string)
  return 0 if string.empty?
  remove_chars_convert_to_integer = string.gsub(/[^0-9,-]/, "").split(",").map(&:to_i)
  fail "You cannot input a negative number: #{remove_chars_convert_to_integer.select { |x| x < 0}}" if remove_chars_convert_to_integer.any? { |x| x < 0 }
  remove_chars_convert_to_integer.inject(:+)
end

end
