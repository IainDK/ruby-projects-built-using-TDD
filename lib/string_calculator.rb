class StringCalculator

def add(string)
  return 0 if string.empty?
  fail 'You cannot input a negative number.' if string.gsub(/[^0-9,-]/, "").split(",").map(&:to_i).any? { |x| x < 0 }
  string.gsub(/[^0-9,-]/, "").split(",").map(&:to_i).inject(:+)
end

end
