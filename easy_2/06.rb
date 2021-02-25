=begin
- Print all odd numbers between 1-99 inclusive
- Each number should be printed on a separate line

- Set number = to 1. 
- While number < 100
  - Print number if it is odd
  - Increment number
=end

number = 1
while number < 100
  puts number if number.odd?
  number += 1
end

# Further Exploration:
# Repeat the same program with a different technique / approach

1.step(to: 99, by: 2) { |num| puts num }