=begin
Input: an integer
  - Can be negative, positive, or 0
Output: a new integer
  - If input is positive, return negative of that number
  - If input is negative or 0, return the input number

Examples:
  negative(5) == -5
  negative(-3) == -3
  negative(0) == 0      # There's no such thing as -0 in ruby

Algorithm:
  - Check to see if the integer is positive
    - If so, return the negative number
  - Otherwise
    - Return the number
=end

def negative(num)
  num > 0 ? -num : num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0
