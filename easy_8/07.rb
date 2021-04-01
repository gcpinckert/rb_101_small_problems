=begin
Input: string
Output: string in which every char from input is doubled
  - If the input is an empty string, return an empty string

Examples:
  repeater('Hello') == "HHeelllloo"
  repeater("Good job!") == "GGoooodd  jjoobb!!"
  repeater('') == ''

Algorithm: 
  - Generate an array of characters in the input string
  - Iterate over the array, for each character
    - Double it
  - Join the array into a string
  - Return the string
=end

def repeater(string)
  string.chars.map { |char| char * 2 }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
