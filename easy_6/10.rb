# Input: positive integer `n`
# Output: display a right triangle whose sides each have `n` stars
  # The straight edge of the triangle should be right aligned

# Examples:
#  triangle(5)
#  
#      *
#     **
#    ***
#   ****
#  *****
#  
#  triangle(9)
#  
#          *
#         **
#        ***
#       ****
#      *****
#     ******
#    *******
#   ********
#  *********

# Initialize an empty array
# Initialize a spaces counter to n - 1
# Initialize a stars counter to 1
# Loop:
  # break if stars is greater than n
  # Initialize an empty string
  # spaces times add a space to the string
  # stars times add a star to the string
  # append the string to the array
  # decrement spaces
  # increment stars
# Ouput the array, one element per line

def triangle(n)
  triangle = []
  spaces = n - 1
  stars = 1

  loop do
    break if stars > n
    line = ''
    spaces.times { line << ' ' }
    stars.times { line << '*' }
    triangle << line
    spaces -= 1
    stars += 1
  end

  puts triangle
end

triangle(5)
triangle(9)