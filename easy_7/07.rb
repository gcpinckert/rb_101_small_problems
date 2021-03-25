# Input: an array of integers
# Output: average of array elements
  # Multiplies all the numbers together
  # Divides the result by the number of entries in the array
# Print the result rounded to 3 decimal places
# Assume the input array will not be empty

# Examples
  # show_multiplicative_average([3, 5]) 
  #   # => The result is 7.500
  # show_multiplicative_average([6])
  #   # => The result is 6.000
  # show_multiplicative_average([2, 5, 7, 11, 13, 17])
  #   # => The result is 28361.667

# Iterate through the array, for each element
  # Mulitply it to the product
# Divide the product by the size of the array
# Output the result to the screen rounded to 3 digits after the decimal

def show_multiplicative_average(array)
  average = (array.inject(:*)) / array.size.to_f
  puts format "The result is %.03f", average
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
