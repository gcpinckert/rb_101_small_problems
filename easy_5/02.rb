# The time of day can be represented by the num of mins after midnight
# If the num is positive, the time is after midnight
# If the num is negative, the time is before midnight
# Write a method that takes a time using this format
# Returns the time of day in 24 hour format (hh:mm)
# Your method should work with any integer input
# Do not use Ruby's Date or Time class

# Examples
  # time_of_day(0) == "00:00"
  # time_of_day(-3) == "23:57"
  # time_of_day(35) == "00:35"
  # time_of_day(-1437) == "00:03"
  # time_of_day(3000) == "02:00"
  # time_of_day(800) == "13:20"
  # time_of_day(-4231) == "01:29"

# Num of minutes between midnights: 1440
# Input: integer, positive or negative
# Output: string in 24 hour format hh:mm

# If input int is negative,
  # Count backwards from midnight
# If input is positive
  # Count forwards from midnight
  