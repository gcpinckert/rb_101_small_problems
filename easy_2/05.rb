=begin
- Write a program that asks for a user's name
- The program should then greet the user.
- If the user writes "name!" the program should "yell back" to the user

Examples:
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

- Input = string (name)
- Output = string (greeting)

- Get users name
- If users name ends in !
  - Display greeting_scream
- Otherwise
  - Display greeting_normal
=end

def gets_name
  print "What is your name? "
  gets.chomp
end

def display_yell_greeting(name)
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
end

def display_greeting(name)
  puts "Hello #{name}."
end

name = gets_name
name[-1] == '!' ? display_yell_greeting(name) : display_greeting(name)