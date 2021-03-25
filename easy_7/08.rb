# Input: 2 arrays
  # Each array contains a list of numbers
# Return: a new array
  # Contains the product of each pair of numbers from the two arguments
  # The pair of numbers will have the same index
# Each of the arguments contain the same number of elements

# Examples:
  # multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Initialize an empty array
# Iterate through one of the input arrays, for each element & index
  # Multiply the current element with the element at the same index in other arr
  # Add the product to the empty array
# Return the empty array (not empty anymore)

def multiply_list(arr_1, arr_2)
  products = []
  arr_1.each_with_index do |element, index|
    products << (element * arr_2[index])
  end

  products
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]