=begin
Input: a positive integer
Output: integer with the digits reversed
  - Don't worry about return values with leading zeros
    - For example, if input = 1200, output = 21

Examples:
  reversed_number(12345) == 54321
  reversed_number(12213) == 31221
  reversed_number(456) == 654
  reversed_number(12000) == 21 # No leading zeros in return value!
  reversed_number(12003) == 30021
  reversed_number(1) == 1

Algorithm:
  - Convert the number to a string
  - Reverse the string
  - Convert the string back to an integer
  - Return the integer
=end

def reversed_number(num)
  num.to_s.reverse.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1
