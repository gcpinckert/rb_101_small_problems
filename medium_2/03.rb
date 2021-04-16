=begin
Problem:
- Input: string
  - Will always contain at least one character
  - Do spaces count as characters?
- Output: hash
  - should contain 3 entries
  - 1) percentage of characters in the string that are lowercase
  - 2) percentage of characters in the string that are uppercase
  - 3) percentage of characters in the string that are neither

Examples:
  letter_percentages('abCdef 123')
  => { lowercase: 50, uppercase: 10, neither: 40 }

  letter_percentages('AbCd +Ef')
  => { lowercase: 37.5, uppercase: 37.5, neither: 25 }

  letter_percentages('123')
  => { lowercase: 0, uppercase: 0, neither: 100 }

Algorithm:
- Initialize a hash characters { lowercase: 0, uppercase: 0, neither: 0 }
- Convert the string to an array of chars
- Iterate over the array, for each char
  - If it is lowercase +1 to characters[:lowercase]
  - If it is uppercase +1 to characters[:uppercase]
  - If it is neither +1 to characters[:neither]
- Calculate the total characters
- Calculate the percentages for each character type
  - character type total / character total * 100
- Update the hash values
- Return the hash
=end

def letter_percentages(string)
  characters = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if char =~ /[a-z]/
      characters[:lowercase] += 1
    elsif char =~ /[A-Z]/
      characters[:uppercase] += 1
    else
      characters[:neither] += 1
    end
  end

  total_chars = string.size.to_f
  characters[:lowercase] = (characters[:lowercase] / total_chars) * 100
  characters[:uppercase] = (characters[:uppercase] / total_chars) * 100
  characters[:neither] = (characters[:neither] / total_chars) * 100

  characters
end

p letter_percentages('abCdef 123')# == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef')# == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123')# == { lowercase: 0, uppercase: 0, neither: 100 }