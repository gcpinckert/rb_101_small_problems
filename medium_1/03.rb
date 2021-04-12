=begin
Write a method that takes an integer as argument, and returns the maximum
rotation of that argument.

Maximum rotation = 
  - Rotate the full number to the left (735291 => 352917)
  - Keep the first digit fixed in place, and rotate the remaining digits
    (352917 => 329175)
  - Keep the first 2 digits fixed, and rotate remaining (329175 => 321759)
  - Keep the first 3 digits fixed, and rotate remaining (321759 => 321597)
  - Keep the first 4 digits fixed, and rotate remaining (321597 => 321579)
  - Once you have finished rotating the last two digits (remaining), you have
    gotten to the maximum rotation

Input: Integer
Output: Integer
  - you will not have to handle multiple 0s
  - leading 0s will get dropped

Examples:
  max_rotation(735291) == 321579
  max_rotation(3) == 3
  max_rotation(35) == 53
  max_rotation(105) == 15 # the leading zero gets dropped
  max_rotation(8_703_529_146) == 7_321_609_845

Algorithm:
  - Initialize a counter variable to the amount of digits in the number
  - Initialize a loop
    - Break if the counter variable is less than 2
    - Reassign number to the value returned by `rotate_rightmost_digits` method
      where the `n` argument supplied is the counter
    - Decremennt the counter by 1
  - Return the number
=end
def rotate_array(array)
  result = array.clone
  result << result.shift
end

def rotate_rightmost_digits(num, amount)
  array = num.digits.reverse
  end_section = rotate_array(array.slice!(-amount, amount))
  (array << end_section).join.to_i
end

def max_rotation(num)
  counter = num.digits.size
  loop do
    break if counter < 2
    num = rotate_rightmost_digits(num, counter)
    counter -= 1
  end

  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
