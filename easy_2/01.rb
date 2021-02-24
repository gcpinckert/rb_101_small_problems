=begin
- Build a program that randomly generates and prints Teddy's age.
- Teddy's age should be a randomly generated number between 20 and 200.

Example Output:
Teddy is 69 years old!

- Input: none
- Output: string

- Set variable age equal to a randomly generate number between 20-200
- Use string interpolation to print that variable in the desired string
=end

age = rand(20..200)
puts "Teddy is #{age} years old!"

# Further Exploration:
# Have the program ask for name, and print the age for that person
# Use "Teddy" if no name is entered.

def display_age(name="Teddy")
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

puts "What's your name?"
name = gets.chomp

display_age(name)
display_age
