# Write a program that:
  # Asks a user for an input of 1+ word
  # Gives back the number of characters
  # Do not count spaces as characters
  # Punctuation does count as a character (see examples)

# Examples:
  # input: Please write word or multiple words: walk
  # output: There are 4 characters in "walk".

  # input: Please write word or multiple words: walk, don't run
  # output: There are 13 characters in "walk, don't run".

# Algorithm:
  # Get user input (string of 1 or more words)
  # Split string into array of characters
  # Remove any spaces
  # Count total number of elements in the array
  # Display results

print "Please write word or multiple words: "
message = gets.chomp

characters = message.chars
num_chars = characters.count { |char| char != ' ' }

puts "There are #{num_chars} characters in \"#{message}\"."
