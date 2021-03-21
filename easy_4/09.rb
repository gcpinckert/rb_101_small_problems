# Write a method that takes a positive integer or 0
# Returns that number as a numeric string
# Do not use any of the standard conversion methods

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(num)
  chars = num.digits.map { |digit| DIGITS[digit] }
  chars.join.reverse
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
