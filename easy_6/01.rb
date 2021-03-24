# Input: Floating point number representing an angle 0-360 degrees
# Return: String that represents the angle in degrees, minutes, and seconds
  # Use a degree symbol to represent degrees
  # A single quote to represent minutes
  # A double quote to represent seconds. 
# A circle has 360 degrees
  # Each degree is divided into 60 minutes
  # Each minute is divided into 60 seconds
# Results may differ slightly from test cases depending on how you round
  # Should be within a second or two of the examples
# Use two digit numbers with leading zeros when formatting the mins and secs:
  # 321;03'07"
# Use the following constant to represent the degree symbol
  # DEGREE = "\xC2\xB0"

# Examples:
  # dms(30) == %(30°00'00")
  # dms(76.73) == %(76°43'48")
  # dms(254.6) == %(254°36'00")
  # dms(93.034773) == %(93°02'05")
  # dms(0) == %(0°00'00")
  # dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Convert the number to the amount of seconds in the angle
  # multiply by 60, then multiply by 60 again
# Get the whole number of degrees
  # Whole number quotient in division by 60
  # Modulus result = remaining number of seconds
# Get the whole number of minutes
  # Whole number quotient in division by 60
  # Modulus result = remaining number of seconds
# Return correctly formatted string

DEGREE = "\xC2\xB0"

def dms(number)
  angle_in_seconds = (number * 60) * 60
  degrees_secs = angle_in_seconds.divmod(60 * 60)
  degrees = degrees_secs[0]
  mins_secs = degrees_secs[1].divmod(60)
  minutes = mins_secs[0]
  seconds = mins_secs[1]

  format %(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")