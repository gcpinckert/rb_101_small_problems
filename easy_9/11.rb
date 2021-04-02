=begin
Input: a given array
Output: Print out groups of words that are anagrams (nested array)
  - Anagrams are words that have the same letters in them but in different
    orders
  - Each group of anagrams should be represented by a sub-array

Example:
  words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
            'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
            'flow', 'neon']
  
  => ["demo", "dome", "mode"]
  => ["neon", "none"]
  etc.

Algorithm:
  - Initialize an empty array
  - Iterate through the array `words`, for each word
    - Initialize an empty array
    - Iterate through the array `words`, for each word
      - Are the outer loop current word and the inner loop current word 
        anagrams?
      - If yes, add them to the empty array inside the outer loop
    - Add the inner results array to the outer results array
  - Return the outer results array, with duplicate elements deleted
  - Output each sub-array

  - Are they anagrams?(two string)
    - Convert the strings into an array of chars
    - Put both arrays in alphabetical order
    - Are they equal?
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

def anagrams?(word_a, word_b)
  word_a.chars.sort == word_b.chars.sort
end

def find_anagrams(strings)
  total_anagrams = []

  strings.each do |string|
    sub_anagrams = []
    strings.each do |word|
      if anagrams?(string, word)
        sub_anagrams << word
      end
    end
    total_anagrams << sub_anagrams
  end

  total_anagrams.uniq
end

def display_found_anagrams(nested_array)
  nested_array.each { |sub_array| p sub_array }
end

display_found_anagrams(find_anagrams(words))
