# Input: string
# Return: new string
  # Every other character is capitalized
  # Remaining characters are lowercase
  # Characters that are not letters should not be changed
  # They do count as characters when switching between upper and lower case

# Examples:
  # staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
  # staggered_case('ALL_CAPS') == 'AlL_CaPs'
  # staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Change the string into an array of chars
# Iterate through the array, for each char
  # If index is even, change char to uppercase
  # Otherwise, change char to lowercase
# Join array back into string
# Return the string

def staggered_case(string)
  i = -1
  string.chars.map do |char|
    i += 1
    if i.even?
      char.upcase
    else
      char.downcase
    end
  end.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'