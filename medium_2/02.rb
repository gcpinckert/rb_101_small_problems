=begin
Problem:
- A collection of spelling blocks has 2 letter per block:
      B:O   X:K   D:Q   C:P   N:A
      G:T   R:E   F:S   J:W   H:U
      V:I   L:Y   Z:M
- Only one letter from each block can be displayed at any given time
  - i.e. you cannot spell any words that have both letters from one block
- Each block can only be used once
- Input: string, one word
  - May contain any combination of cases
- Output: Boolean:
  - true if the word can be spelled with the given blocks
  - false if otherwise

Examples:
  block_word?('BATCH') == true
  block_word?('BUTCH') == false
  block_word?('jest') == true

Algorithm:
- Initialize a constant - array of all spelling blocks
- Convert the input string to all uppercase letters
- Does any single letter occur more than once?
  - Return false
- Iterate through the spelling blocks
  - If the word contains both letters from any one block
    - Return false
- Return True
=end

SPELLING_BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
                   ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
                   ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def block_word?(word)
  word = word.upcase

  ('A'..'Z').to_a.each do |char|
    return false if word.count(char) > 1
  end

  SPELLING_BLOCKS.each do |block|
    return false if word.include?(block[0]) && word.include?(block[1])
  end

  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
