# Write a method that:
  # Takes two strings as arguments
  # Determines the longest of the two strings
  # Returns the result: short string + long string + short string
  # The strings will always be of two different lengths

# Examples:
  # short_long_short('abc', 'defgh') == "abcdefghabc"
  # short_long_short('abcde', 'fgh') == "fghabcdefgh"
  # short_long_short('', 'xyz') == "xyz"

def short_long_short(str_a, str_b)
  if str_a.size > str_b.size
    return str_b + str_a + str_b
  else
    return str_a + str_b + str_a
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"