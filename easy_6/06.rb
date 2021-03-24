# Input: two arrays (arguments)
# Return: a new array that contains all the values from the argument arrays
# Only include duplicate values once

# Initialize a new empty array
# Iterate through the first array
  # Add each element to the new array
# Iterate through the second array
  # Add each element to the new array
# Delete any repeated elements from the new array
# Return the new array

def merge(array_a, array_b)
  merged_array = []
  array_a.each { |element| merged_array << element }
  array_b.each { |element| merged_array << element }
  merged_array.uniq
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]