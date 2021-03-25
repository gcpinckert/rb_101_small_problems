# Input: 2 arrays of numbers
# Return: new array
  # Contains the product of every pair of numbers that can be formed
  # between the elements of the two arrays
  # Sort the results by increasing value
# Neither argument will be an empty array

# Examples:
  # multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# Initialize an empty array
# Iterate through the first array, for each element
  # Iterate through the second array, for each element
    # Multiply the current element of the first array by the current element
    # Append the product to the empty array
# Sort the products array in ascending order
# Return the products array

def multiply_all_pairs(arr_1, arr_2)
  products = []
  arr_1.each do |x|
    arr_2.each do |y|
      products << x * y
    end
  end

  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
