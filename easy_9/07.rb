=begin
Input: string, representing a full name
  - Will always have two words separated by a space
Output: new string
  - Contains the last name, a comma, a space, and the first name

Example:
  swap_name('Joe Roberts') == 'Roberts, Joe'

Algorithm:
  - Convert the input string to an array of words
  - Reverse the order of the array
  - Join the words with ', ' as delimiter
=end

def swap_name(name)
  name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
