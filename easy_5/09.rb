# Given a string as an argument
# Return a new string that contains:
  # The value of the original string with all consecutive duplicate characters collapsed
# Do not use squeeze or squeeze!

# Initialize an empty string object
# Create array of all characters in the string
# Iterate through the array, for each character
  # If the character is the first in the array
    # Add it to the empty string object
  # If the character is the same as the character before it
    # Go to the next iteration
  # Otherwise
    # Add it to the empty string object
# Return the new string object

def crunch(string)
  result = ''
  string.chars.each_with_index do |char, idx|
    if idx == 0 || char != string[idx - 1]
      result << char
    else
      next
    end
  end

  result
end


puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
