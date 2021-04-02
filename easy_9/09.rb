=begin
Input: 3 integers between 0-100 (grade scores)
Output: the letter value associated with the average grade
  - Get the average of the three input scores
  - Output the correct letter according to the following rules:
    - 90 <= score <= 100 ----> A
    - 80 <= score < 90   ----> B
    - 70 <= score < 80   ----> C
    - 60 <= score < 70   ----> D
    - 0 <= score < 60    ----> F

Examples:
  get_grade(95, 90, 93) == "A"
  get_grade(50, 50, 95) == "D"

Algorithm:
  - Add all the input numbers together
  - Divide the sum by 3 to get the average
  - If the average is between 90-100, return 'A'
  - If the average is between 80-89, return 'B'
  - If the average is between 70-79, return 'C'
  - If the average is between 60-69, return 'D'
  - If the average is between 0-59, return 'F'
=end

def get_grade(grade1, grade2, grade3)
  average = (grade1 + grade2 + grade3) / 3
  case
  when average >= 90 then 'A'
  when average >= 80 then 'B'
  when average >= 70 then 'C'
  when average >= 60 then 'D'
  else                    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
