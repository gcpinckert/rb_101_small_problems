# Write a method that takes one argument, a positive int
# and returns a list of the digits in that number

# input = positive integer
# output = list of integers (array)

# Given a positive integer of any length
# Split it up into an array 
# Each element in the array is a single digit in the integer
# Put array into correct order

def digit_list(integer)
  integer.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true