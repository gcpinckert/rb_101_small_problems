=begin
Input: an array and a hash
  - The array will contain 2 or more elements
  - These elements, when put together with spaces between them, will be a name
  - The hash will contain 2 keys `:title` and `:occupation`
  - The values will be these categories for the person named in the array
Output: return a new string
  - Greet the person using their full name
  - Mention the person's title and occupation
  - Does this need to be returned or output to the screen by the method?
    - (Assume yes based on example)

Example:
  greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
  => Hello, John Q Doe! Nice to have a Master Plumber around.

Algorithm: 
  - Set variable `full_name` to the value returned by joined array (with ' ')
  - Use string interpolation to select the appopriate values from the hash
    and use them within the greeting
  - Output the greeting to the console within the method
=end

def greetings(full_name, details)
  puts "Hello, #{full_name.join(' ')}! It's nice to have a " \
       "#{details[:title]} #{details[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
