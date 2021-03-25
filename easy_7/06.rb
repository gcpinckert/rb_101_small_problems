# Modify the method from 05.rb such that it ignored non-alphabetic characters
# The non-alphabetic character should still be included in the return value
# They don't count when toggling the desired case

# Set a counter variable = 0
# Initialize an empty string
# Change the string to an array of chars, for each char
  # If the char is not alphabetical
    # Add the char to the empty string
    # Next iteration
  # Otherwise
    # If the counter is even
      # Change the char to upcase and add it to the empty string
    # If the counter is odd
      # Change the char to downcase and add it to the empty string
    # Increment the counter
# Return the empty string (not empty any more)

def staggered_case(string)
  i = 0
  staggered_string = ''

  string.chars.each do |char|
    if char =~ /[^A-Za-z]/
      staggered_string << char
      next
    else

      if i.even?
        staggered_string << char.upcase
      else
        staggered_string << char.downcase
      end

      i += 1
    end
  end

  staggered_string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
