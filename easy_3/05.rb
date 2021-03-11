# Using the multiply method from 04.rb:
# Write a method that:
  # Computes the square of its argument

def multiply(num_a, num_b)
  num_a * num_b
end

def square(num)
  multiply(num, num)
end

puts square(5) == 25
puts square(-8) == 64
