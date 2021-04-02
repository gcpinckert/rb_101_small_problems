=begin
Input: two integers
  - The first integer given is a count
  - `count` will always have a value of 0 or greater
  - The second is the first number in a sequence that the method creates
Output: an array
  - Containing the same number of elements as `count`
  - Values of each element should be multiples of the `start`
    - i.e. start * 1, start * 2, start * 3, etc
  - If `count` is 0, return an empty array

Examples:
  sequence(5, 1) == [1, 2, 3, 4, 5]
  sequence(4, -7) == [-7, -14, -21, -28]
  sequence(3, 0) == [0, 0, 0]
  sequence(0, 1000000) == []

Algorithm:
  - Initialize an empty array
  - Initialize a loop that will iterate `count` times
    - Mulitply `start` by the number representing the current iteration
    - Add the returned product to the array
  - Return the array
=end

def sequence(count, start)
  multiples = []

  1.upto(count) do |num|
    multiples << (start * num)
  end

  multiples
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
