=begin
Input: string
  - words are separated by exactly one space
  - any substring of non-space characters is a word
Output: array
  - containing every word from the string
  - each word should have a space and the word length added to the end
  - each element is a string, not a sub-array
  - an empty string returns an empty array

Examples:
  word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

  word_lengths("baseball hot dogs and apple pie") ==
    ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

  word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

  word_lengths("Supercalifragilisticexpialidocious") ==
    ["Supercalifragilisticexpialidocious 34"]

  word_lengths("") == []

Algorithm:
  - Convert the string to an array of words
  - Iterate over the array, for each word
    - Append a space and the word length to the end of the string
  - Return the transformed array
=end

def word_lengths(string)
  string.split.map { |word| word + ' ' + word.size.to_s }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
