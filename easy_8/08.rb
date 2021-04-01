=begin
Input: string
Output: new string
  - Every consonant character is doubled
  - Vowels, digits, punctuation, and whitespace should not be doubled
  - An empty string should return an empty string

Examples:
  double_consonants('String') == "SSttrrinngg"
  double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
  double_consonants("July 4th") == "JJullyy 4tthh"
  double_consonants('') == ""

Algorithm:
  - Generate an array of characters in the string
  - Iterate over the array
    - If it is a consonant, double it
      - Check 
    - If it is not, it remains the same
  - Join the array and return the resulting string
=end


def double_consonants(string)
  string.chars.map do |char|
    consonant?(char) ? char * 2 : char
  end.join
end

def consonant?(char)
  (97..122).cover?(char.downcase.ord) && !%w(a e i o u).include?(char.downcase)
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
