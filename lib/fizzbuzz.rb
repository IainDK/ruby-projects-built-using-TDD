class FizzBuzz

def play(number)
  if divisible_by_fifteen?(number)
    'FizzBuzz'
  elsif divisible_by_five?(number)
    'Buzz'
  elsif divisble_by_three?(number)
    'Fizz'
  else
    number
  end
end

def divisble_by_three?(number)
  divisible_by?(number, 3)
end

def divisible_by_five?(number)
  divisible_by?(number, 5)
end

def divisible_by_fifteen?(number)
  divisible_by?(number, 15)
end

def divisible_by?(number, divisor)
  number % divisor == 0
end

end
