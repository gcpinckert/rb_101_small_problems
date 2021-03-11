# Exclusive or - you want only one of two conditions to be truthy (not both)
# Write an xor? function:
  # Takes 2 arguments
  # Returns true if only one of it's arguments is truthy
  # Returns false if neither argument is truthy
  # Returns false if both arguments are truthy
  # Return a boolean value

# Examples:
  # xor?(5.even?, 4.even?) == true
  # xor?(5.odd?, 4.odd?) == true
  # xor?(5.odd?, 4.even?) == false
  # xor?(5.even?, 4.odd?) == false

def xor?(bool_a, bool_b)
  if bool_a && bool_b
    return false
  elsif !bool_a && !bool_b
    return false
  else
    return true
  end
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false