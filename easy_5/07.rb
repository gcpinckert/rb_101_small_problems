# Modify the word_sizes method from 06.rb
# It should exclude non-letters when determining word size
# "it's" = 3, not 4

def word_sizes(string)
  words = string.split
  words.map! do |word|
    word.chars.select { |char| ('a'..'z').include?(char.downcase) }.join
  end

  words.each_with_object({}) do |word, hash|
    if hash.has_key?(word.size)
      hash[word.size] += 1
    else
      hash[word.size] = 1
    end
  end
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}