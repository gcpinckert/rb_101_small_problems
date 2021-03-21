# Write a method that takes an integer, and converts it to a string
# If it is a positive number add a '+'
# If it is a negative number add a '-'
# If it is 0 do not add a sign
# You can use the method from 09.rb

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(num)
  chars = num.digits.map { |digit| DIGITS[digit] }
  chars.join.reverse
end

def signed_integer_to_string(num)
  case num <=> 0
  when 1 then '+' << integer_to_string(num)
  when -1 then '-' << integer_to_string(num.abs)
  else                integer_to_string(num)
  end 
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
