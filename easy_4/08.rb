# Write a method that takes a string of digits as an argument
# Returns the appropriate number as an integer
# The string may have a leading + or - sign
  # If the first character is + return a positive number
  # If it is - return a negative number
  # If no sign is given, return a positive number
# The string will always contain a valid number
# Do not use any of the standard conversion methods available
# You may use the string_to_integer method from 07.rb

# If the first character in the string is +
  # Remove the first character
  # Return the string passed to the string_to_integer method
# If the first character in the string is -
  # Remove the first character
  # Convert the string to an integer
  # Subtract twice the number from the converted string
# If the first character in the string is a number
  # Return the converted string

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  if string[0] == '-'
    string = string[1..-1]
    num = string_to_integer(string)
    num - (2 * num)
  elsif string[0] == '+'
    string = string[1..-1]
    string_to_integer(string)
  else
    string_to_integer(string)
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
puts
