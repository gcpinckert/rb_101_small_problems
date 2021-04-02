=begin
Input: two dimensional array
  - Each sub array is a string and a number
  - The string represents the object (grocery item)
  - The number represents the quantity of the object
Output: a new array* (*clarify - return new array or self?)
  - array should be a single dimension (no sub-arrays)
  - Each value should be repeated the amount of times of the number in the
    input sub-array

Examples:
  buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
    ["apples", "apples", "apples", "orange", "bananas","bananas"]

Algorithm:
  - Initialize an empty array
  - Iterate over the input array, for each sub-array
    - Initialize a loop that will iterate the amount of times represented
      by the number element of the current sub-array
        - Add the string element of the current sub-array to the results array
  - Return the results array
=end

def buy_fruit(fruits_with_quants)
  fruits = []

  fruits_with_quants.each do |fruit|
    fruit[1].times { fruits << fruit[0] }
  end

  fruits
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
    ["apples", "apples", "apples", "orange", "bananas","bananas"]