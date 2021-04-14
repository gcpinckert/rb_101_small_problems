=begin
- Write a method that takes a sentence and returns a string with any sequence
  of words that are numbers ('zero', 'one', etc) converted to a string of
  digits

- Input: string
  - may contain number words like 'one', 'two', 'three'
- Output: string
  - all number words have been converted to string digits, '1', '2', '3'
  - digits are separated by a space as if they are singular words
    (1 2 3 not 123)

Example:
word_to_digit('Please call me at five five five one two three four. Thanks.')
== 'Please call me at 5 5 5 1 2 3 4. Thanks.'

Algorithm:
- Convert input string to array `words`
- Iterate over array, for each word
  - Is it a number word?
    - Transform to appropriate digit
  - Otherwise, go to next word
- Join array of words with ' ' delimiter
- Return the resulting string
=end

def word_to_digit(sentence)
  words = sentence.split
  words.map! do |word|
    case word.downcase.delete "^a-z"
    when 'zero'   then '0'
    when 'one'    then '1'
    when 'two'    then '2'
    when 'three'  then '3'
    when 'four'   then '4'
    when 'five'   then '5'
    when 'six'    then '6'
    when 'seven'  then '7'
    when 'eight'  then '8'
    when 'nine'   then '9'
    else               word
    end
  end

  words.join(' ') # this does not account for any punctuation attached to word
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
