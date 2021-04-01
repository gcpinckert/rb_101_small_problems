=begin
Input: string
Output: an array of all substrings that are palindromes in the input string
  - Each substring must consist of the same sequence of characters forwards
  and backwards
  - Arrange substrings in the same sequence as they appear in the input
  - Include duplicate substrings multiple times
  - Single characters are not considered palindromes
  - Palindromes are case sensitive (i.e. 'MoM' but not 'Mom')
  - All characters should be included in your consideration ('bob' but not 'bob.')
- You may use the `substrings` method from 04.rb

Examples:
  palindromes('abcd') == []
  palindromes('madam') == ['madam', 'ada']
  palindromes('hello-madam-did-madam-goodbye') == [
    'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
    'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
    '-madam-', 'madam', 'ada', 'oo'
  ]
  palindromes('knitting cassettes') == [
    'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
  ]

Algorithm: 
  - Generate an array of all substrings in the input string
  - Iterate through the substrings, for each substring
    - Check to see if it is longer than 1 char
    - Check to see if it is the same backwards as it is forwards
  - Return an array of substrings that pass both tests
=end

def palindromes(string)
  substrings(string).select do |substring|
    substring.length > 1 && substring.reverse == substring
  end
end

def leading_substrings(string)
  counter = 0
  substrings = []

  loop do
    break if counter >= string.length
    substrings << string[0..counter]
    counter += 1
  end

  substrings
end

def substrings(string)
  all_substrings = []

  0.upto(string.size - 1) do |index|
    all_substrings << leading_substrings(string[index..-1])
  end

  all_substrings.flatten
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
