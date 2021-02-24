=begin
- Build a program that displays when the user will retire
- And how many years she has to work until retirement

Example:
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

- Input: 2 integers, age and retirement_age
- Output: 2 integers, retirement_year and years_to_retire

- Get user's age
- Get user's retirement_age
- Set constant CURRENT_YEAR = the current year
- Calculate years_to_retire = retirement_age - age
- Calculate retirement_year = CURRENT_YEAR + years_to_retire
- Display results
=end

CURRENT_YEAR = Time.now.year

def get_age
  print "What is your age? "
  gets.chomp.to_i
end

def get_retirement_age
  print "At what age would you like to retire? "
  gets.chomp.to_i
end

def calculate_years_to_retire(age, retirement_age)
  retirement_age - age
end

def calculate_retirement_year(years_to_retire)
  CURRENT_YEAR + years_to_retire
end

def display_results(years_to_retire, retirement_year)
  puts
  puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}."
  puts "You have only #{years_to_retire} years of work to go!"
end

age = get_age
retirement_age = get_retirement_age
years_to_retire = calculate_years_to_retire(age, retirement_age)
retirement_year = calculate_retirement_year(years_to_retire)
display_results(years_to_retire, retirement_year)