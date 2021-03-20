# Write a method that takes an array of numbers
# Return an array with the same number of elements
# Each element has the running total from the original array

# Option 1:

# Initialize total variable to 0
# Iterate through provided array (transformation)

def running_total(array_nums)
  total = 0
  array_nums.map { |num| total += num }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
puts

# Option 2:

def running_total2(array)
  total = 0
  array.each_with_object([]) do |num, arr|
    total += num
    arr << total
  end
end

puts running_total2([2, 5, 13]) == [2, 7, 20]
puts running_total2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total2([3]) == [3]
puts running_total2([]) == []
puts
