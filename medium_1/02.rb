=begin
Write a method that can rotate the last `n` digits of a number.

Input: two integers
  - The first one, the integer to rotate
  - The second one (`n`) how many digits to rotate
Output: a new integer, with the last `n` digits rotates
  - If only 1 digit is roated the original number should be returned
  - If 2 digits are rotated, those two digits switch
  - If 3 digits are rotates, the first of those 3 digits moves to the end and
    the remaining two move forward in the number but retain their original
    order
  - Etc until the size of the provided number is reached

Examples:
  rotate_rightmost_digits(735291, 1) == 735291
  rotate_rightmost_digits(735291, 2) == 735219
  rotate_rightmost_digits(735291, 3) == 735912
  rotate_rightmost_digits(735291, 4) == 732915
  rotate_rightmost_digits(735291, 5) == 752913
  rotate_rightmost_digits(735291, 6) == 352917

Algorithm:
  - Turn the input integer to rotate into an array
  - Slice the last `n` elements of the array
  - Use the `rotate_array` method on that sliced section to get the rotation
  - Append the rotated section to the input array
  - Flatten if necessary and convert back to an integer
  - Return the integer
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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
