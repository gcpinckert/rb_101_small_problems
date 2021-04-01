=begin
Input: 2 integers, starting and ending number
Output: Print to the console all the numbers between the two numbers
  - The range should be inclusive (include both start and end)
  - If a number is divisible by 3, print "Fizz"
  - If a number is divisible by 5, print "Buzz"
  - If a number is divisible by both 3 and 5 print "FizzBuzz"

Example:
  fizzbuzz(1, 15) 
  # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

Algorithm:
  - Initialize a loop that will start with the first int argument and iterate
  up to the second int argument
    - If the current number is divisible by both 3 & 5 print "FizzBuzz"
    - If the current number is divisible by 3 print "Fizz"
    - If the current number is divisible by 5 print "Buzz"
    - Otherwise, print the current number
=end

def fizzbuzz(start, finish)
  start.upto(finish) do |num|
    if num % 3 == 0 && num % 5 == 0
      print "FizzBuzz"
    elsif num % 3 == 0
      print "Fizz"
    elsif num % 5 == 0
      print "Buzz"
    else
      print num
    end

    print ", " unless num == finish
  end

  puts
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz