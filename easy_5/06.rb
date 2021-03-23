# Given a string with one or more space separated words
# Return a hash that shoes the number of words of differing sizes
# Words consist of all string of characters that do not include a space
  # Punctuation is included in the character count for each word

# Divide the string up into an array of words
# Create an empty hash object
# Iterate through the array, for each word
  # The current hash key will be the size of the current word
  # If the hash key already exists
    # Increment the value by 1
  # Add the hash key with the value of integer 1
# Return the hash

def word_sizes(string)
  words = string.split
  words.each_with_object({}) do |word, hash|
    if hash.has_key?(word.size)
      hash[word.size] += 1
    else
      hash[word.size] = 1
    end
  end
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
