# Write a method that
  # Takes one argument, an integer
  # Finds all multiples of 3 or 5 that are between 1 and that number
  # Computes the sum of those multiples
  # The argument will always be an integer greater than 1

# Example:
  # Input: 20
  # Multiples: 3, 5, 6, 9, 10, 12, 15, 18, 20
  # Output: 98

# Initialize an empty array
# Iterate through the range of numbers, for each number
  # If the number is a multiple of 3 or 5
    # Add it to the array
# Return the sum of all numbers in the array

def multisum(num)
  multiples = []
  (1..num).each do |n|
    if n % 3 == 0 || n % 5 == 0
      multiples << n
    end
  end
  multiples.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168