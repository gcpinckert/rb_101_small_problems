=begin
Input: an array of numbers
  - The array will always contain at least one number
  - The numbers will always be positive (see test cases)
  - You do not need to account for nested arrays
Output: the sum of the sums for each leading subsequence
  - i.e. (array[0]) + (array[0] + array[1]) + (array[0] + array[1] + array[2]) + ... etc = sum

Examples:
  sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
  sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
  sum_of_sums([4]) == 4
  sum_of_sums([1, 2, 3, 4, 5]) == 35

Algorithm:
  - Initialize a sum variable to 0
  - Iterate over the input array for transformation, for each element:
    - Add the element to sum
    - Return sum
  - This will return a new array of all the sums
  - Sum the array and return the sum
=end

def sum_of_sums(array)
  sum = 0
  array.map { |num| sum += num }.sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

=begin
Option 2:

- Initialize a counter variable to 0
- Initialize a total_sum variable to 0
- Loop while counter is less than the size of the input array
- For each iteration:
  - Take the section of the array between index 1 and index counter
  - Get the sum of that section of the array
  - Increment the total_sum variable by that sum
  - Increment the counter by 1
- Return the total sum
=end

def sum_of_sums2(array)
  total_sum = 0
  counter = 0
  
  while counter < array.size
    total_sum += array[0..counter].sum
    counter += 1
  end

  total_sum
end

p sum_of_sums2([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums2([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums2([4]) == 4
p sum_of_sums2([1, 2, 3, 4, 5]) == 35