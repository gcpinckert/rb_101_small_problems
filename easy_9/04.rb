=begin
Input: an integer
  - All integers are positive and non-zero
Output: an array
  - Array should contain, in sequence, all ints between 1 and input

Examples:
  sequence(5) == [1, 2, 3, 4, 5]
  sequence(3) == [1, 2, 3]
  sequence(1) == [1]

Algorithm:
  - Initialize an empty array
  - Initialize a loop that iterates from 1 to the input num
    - Add the current iteration number to the array
  - Return the array
=end

def sequence(num)
  result = []
  1.upto(num) { |i| result << i }
  result
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
