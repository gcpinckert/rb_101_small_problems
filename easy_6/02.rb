# Input: array of strings
# Return: an array of the same string values with all vowels removed
# Maintain same data structure
# Keep original case

# Examples:
  # remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
  # remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
  # remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Iterate through the array, for each string
  # Convert the string into an array of characters
  # Iterate through the array of characters, for each character
    # If it is a vowel, do not select it
  # Join the array of characters back into a string
# Return the array

VOWELS = %w(A E I O U a e i o u)

def remove_vowels(strings)
  strings.map do |string|
    string.chars.reject do |char|
      VOWELS.include?(char)
    end.join
  end
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']