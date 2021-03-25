# Input: array and a search value
# Return: Boolean
  # true is search value is in array
  # false if otherwise
# Do not use the Array#include? method

def include?(array, search_value)
  matches = array.select { |element| element == search_value }
  matches.size > 0
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
