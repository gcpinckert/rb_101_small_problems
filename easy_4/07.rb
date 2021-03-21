# Write a method that takes a numerical string
# Returns the number as an integer
# Do not use to_i
# Do not use the Integer constructor
# Assume all characters will be numeric
# Calculate the result by analyzing the characters in the string

# Create an array of each digit in the string
# Initialize a number variable 0
# Iterate through the array with index
  # Check the numeric value of the digit
    # Add the appropriate digit to num + index * 10 () 
# Join the transformed array

def string_to_integer(string)
  digits = string.chars
  num = 0

  digits.map! do |num|
    case num
    when '0' then 0
    when '1' then 1
    when '2' then 2
    when '3' then 3
    when '4' then 4
    when '5' then 5
    when '6' then 6
    when '7' then 7
    when '8' then 8
    when '9' then 9
    end
  end

  digits.each { |digit| num = 10 * num + digit }
  num
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
