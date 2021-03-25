# Input: string
# Return: Hash containing 3 entries:
  # Number of characters in the string that are lowercase
  # Number of characters in the string that are uppercase
  # Number of characters that are neither

# Examples:
  # letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
  # letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
  # letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
  # letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Initialize a hash with the required keys and values at 0
# Convert string to an array of characters
# Iterate through the array, for each character
  # If it is lowercase, increment the lowercase value
  # If it is uppercase, increment the uppercase value
  # If it is neither, increment the neither value
# Return the hash

def letter_case_count(string)
  characters = string.chars
  characters.each_with_object({lowercase: 0, uppercase: 0, neither: 0}) do |char, hsh|
    if ('a'..'z').include?(char)
      hsh[:lowercase] += 1
    elsif ('A'..'Z').include?(char)
      hsh[:uppercase] += 1
    else
      hsh[:neither] += 1
    end
  end
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }