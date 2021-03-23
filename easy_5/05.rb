# Given a string that consists of some words (all lowercased)
# And an assortment of non-alphabetic characters
# Return a string with all the non-alphabetic chars replaced with spaces
# If one of more non-alphabetic chars occur in a row
  # Only have one space in the result
# Regular punctuation in the input should also be converted to spaces
# The output should not have more than one consecutive space

# Initialize an empty string `result`
# Divide the string into an array of characters
# For each character in the string
# Is the character non-alphabetical?
  # Is the character before it non-alphabetical?
    # If yes, go to next iteration
  # If no, add a space to result
  # If the character is alphabetical, add it to result
# Return result

def cleanup(string)
  result = ''
  string.chars.each do |char|
    if ('a'..'z').include?(char)
      result << char
    else
      result << ' ' unless result[-1] == ' '
    end
  end

  result
end

puts cleanup("---what's my +*& line?") == ' what s my line '
