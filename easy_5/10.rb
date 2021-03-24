# Given a string line of text
# Output that text printed within a box
# The input will always fit in the terminal window

# Examples:
  # print_in_box('To boldly go where no one has gone before.')
  # +--------------------------------------------+
  # |                                            |
  # | To boldly go where no one has gone before. |
  # |                                            |
  # +--------------------------------------------+
  # 
  # print_in_box('')
  # +--+
  # |  |
  # |  |
  # |  |
  # +--+

# Input: string (i.e. 'go')
# Output: series of strings
  # top/bottom line (+--+)
  # top/bottom spacing line (|  |)
  # middle line with text (| a |)
  # top/bottom spacing line
  # top/bottom line

# Output the top-bottom line:
  # Initialize an empty string
  # Add '+' to the string
  # Initialize a loop, for the amount of characters in text + 2
    # Add '-' to the string
  # Add '+' to the string
  # Return the string
# Output the top-bottom spacing line
  # Initialize an empty string
  # Add '|' to the string
  # Initialize a loop, for the amount of characters in text + 2
    # Add ' ' to the string
  # Add '|' to the string
  # Return the string
# Output the middle line with the text
  # Initialize an empty string
  # Add '| ' to the string
  # Add the text to the string
  # Add ' |' to the string
  # Return the string
# Repeat step 2 (top-bottom-spacing line)
# Repeat step 1 (top-bottom line)

def print_in_box(text)
  puts top_bottom_border(text)
  puts top_bottom_spacer(text)
  puts middle_text(text)
  puts top_bottom_spacer(text)
  puts top_bottom_border(text)
end

def top_bottom_border(text)
  line = '+'
  (text.size + 2).times { line << '-' }
  line << '+'
  line
end

def top_bottom_spacer(text)
  line = '|'
  (text.size + 2).times { line << ' ' }
  line << '|'
  line
end

def middle_text(text)
  '| ' << text << ' |'
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
