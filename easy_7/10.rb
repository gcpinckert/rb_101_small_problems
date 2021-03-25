# Input: string
# Return: string, penultimate word in string passed as argument
# Words are any sequence of non-blank characters
# The input string will always contain at least two words

# Change the string to an array of words
# Return the word at the index of next to last in the array

def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'