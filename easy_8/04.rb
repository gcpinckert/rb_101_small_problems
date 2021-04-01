=begin
Input: string
  - You may assume the string will not be empty
Output: an array containing all sub-strings of the input string
  - Order the list by where in the string the substring begins
  - All substrings that begin at index 0 come first, then all substrings
    beginning at index 1, etc
  - Within each beginning position, order the substrings from shortest to longest
  - [ string[0], string [0..1], string[0..2], ..., string[1], string[1..2], ... ]
- You may use the `leading_substrings` method from 03.rb

Example:
  substrings('abcde') == [
    'a', 'ab', 'abc', 'abcd', 'abcde',
    'b', 'bc', 'bcd', 'bcde',
    'c', 'cd', 'cde',
    'd', 'de',
    'e'
  ]

Algorithm: 
- Initialize `substrings` as an empty array
- Initialize a loop that iterates until the last index in the given string is reached
  - Set the current string to the section of the string beginning at the current index
  - Call `leading_substrings` on the current string
  - Add the return value to the `substrings` array
- Flatten the `substrings` array and return it
=end

def leading_substrings(string)
  counter = 0
  substrings = []

  loop do
    break if counter >= string.length
    substrings << string[0..counter]
    counter += 1
  end

  substrings
end

def substrings(string)
  all_substrings = []

  0.upto(string.size - 1) do |index|
    all_substrings << leading_substrings(string[index..-1])
  end

  all_substrings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
