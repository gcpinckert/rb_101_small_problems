=begin
- Write a method that takes one argument, a string
- Returns a new string with words in reverse order

Examples:
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

- Input = string
- Output = string

- Split string up into an array of words
- Reverse the order of the array
- Join the array elements together into a string
  - Separating each with a ' '
=end

def reverse_sentence(input_string)
  words = input_string.split(' ')
  words.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
# The above tests should all print `true`