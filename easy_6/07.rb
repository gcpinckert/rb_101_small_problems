# Input: array
# Output: nested array, two inner arrays
  # First inner array is the first half of the original array
  # Second inner array is the second half of the original array
# If the original array contains an odd number of elements:
  # Place the middle element in the first inner array

def halvsies(array)
  result = [[], []]
  array.each_with_index do |element, index|
    if array.size.odd?
      if index <= array.size / 2
        result[0] << element
      else
        result[1] << element
      end
    else
      if index < array.size / 2
        result [0] << element
      else
        result [1] << element
      end
    end
  end

  result
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
