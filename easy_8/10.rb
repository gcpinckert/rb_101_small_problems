=begin
Input: a string
  - The string will always contain some characters
Output: The middle character or characters (if even)
  - If the input's length is odd, return only 1 character
  - If the input's length is even, return 2 characters
  - Whitespace and punctuation count as characters in the string

Examples:
  center_of('I love ruby') == 'e'
  center_of('Launch School') == ' '
  center_of('Launch') == 'un'
  center_of('Launchschool') == 'hs'
  center_of('x') == 'x'

Algorithm:
  - If the length of the string is odd
    - Return the character at index length / 2
  - If the length of the string is even
    - Return the 2 characters at index length / 2 - 1
=end

def center_of(string)
  length = string.size
  if length.odd?
    string[length / 2]
  else
    string[((length / 2) - 1), 2]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
