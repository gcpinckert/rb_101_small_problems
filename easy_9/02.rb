=begin
Input: an integer
  - All test case integers are positive
  - All test case integers are non-zero
Output: return a new integer
  - The new integer should be 2 times the input number
  - UNLESS the input number is a double number
  - A double number
    - has an even number of digits
    - The left-side and right-side are identical
    - ex. `44`, `3333`, `103103`, `7676` but not `107`
  - If the input is a double number, return the number as-is

Examples:
  twice(37) == 74
  twice(44) == 44
  twice(334433) == 668866
  twice(444) == 888
  twice(107) == 214
  twice(103103) == 103103
  twice(3333) == 3333
  twice(7676) == 7676
  twice(123_456_789_123_456_789) == 123_456_789_123_456_789
  twice(5) == 10

Algorithm:
  - Check to see if the number is a double number:
    - Convert the number to a string
    - Account for single digit numbers - can't be split into 2
    - Reference the right side of the number and the left side of the number
      - Set the splitting index to the size of the num less 1
      - Add one to the splitting index for the right side of the num
    - Compare the two to see if they are equal
  - If the number is a double number:
    - Return the number
  - If the number is not a double number:
    - Return the number * 2
=end

def double_number?(int)
  num = int.to_s
  split = num.size / 2 - 1
  return false if num.size == 1
  num[0..split] == num[split + 1..-1]
end

def twice(number)
  if double_number?(number)
    number
  else
    number * 2
  end
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
