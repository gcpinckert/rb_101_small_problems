# Write a method that takes a string as an argument
# Returns the ASCII string value of that string
# ASCII string value = sum of all chars ASCII value
# You may use string#ord

# Convert string to array
# Iterate through the array with memo object sum
  # Convert each char to ASCII value
  # Add that value to sum
# Return sum

def ascii_value(string)
  string.chars.reduce(0) do |sum, char|
    sum += char.ord
  end
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
