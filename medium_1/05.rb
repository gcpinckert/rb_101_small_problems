=begin
- Display a 4-pointed diamond in an n x n grid
- n is an odd integer supplied as an argument
  - n will always be odd

Examples:
diamond(1)

*

diamond(3)

 *  -#*#
*** -***
 *  -#*#

diamond(9)

    *     - ####*####
   ***    - ###***###
  *****   - ##*****##
 *******  - #*******#
********* - *********
 *******  - #*******#
  *****   - ##*****##
   ***    - ###***###
    *     - ####*####

Input = an odd positive integer, representing height and width of the grid
Output = an array of strings
  - Each string will represent a row in the diamond
  - Each string will consist of an even number (or 0) spaces
  - Each string will consist of an odd number of *

Algorithm:
- Initialize an empty array
- Set `rows` variable to 0
- Set * variable to input `num`
- While rows < `num`
  - While * > 0
    - Create a string of * variables stars centered on `num` sized string
      - Extract to separate method
    - If the array is empty
      - Add the string to the array
    - If the array is not empty
      - Add the string to the front and end of the array
    - decrement `stars` by 2
  - Increment `rows` by 1
- Return the array of strings
- Print the array of strings to the string, one string per line

- Create a string of * starts centered on `num` sized string
  - Set empty string
  - Set counter to 0
  - While counter < * variable
    - Concatenate * to string
    - Increment counter
  - Center string in `num` sized string
  - Return string
=end

def make_row(num, stars)
  row = ''
  stars.times { row << '*' }
  row.center(num)
end

def render_diamond(num)
  diamond_lines = []
  rows = 0
  stars = num

  while rows < num
    while stars > 0
      row = make_row(num, stars)
      if diamond_lines.empty?
        diamond_lines << row
      else
        diamond_lines.append(row)
        diamond_lines.prepend(row)
      end
      stars -= 2
    end
    rows += 1
  end

  diamond_lines
end

def print_diamond(diamond)
  diamond.each { |line| puts line }
end

print_diamond(render_diamond(1))
print_diamond(render_diamond(3))
print_diamond(render_diamond(9))