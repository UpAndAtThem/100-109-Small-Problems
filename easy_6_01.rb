# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees
# and returns a String that represents that angle in degrees, minutes and seconds. You should use a 
# degree symbol (°) to represent degrees, a single quote (') to represent minutes,
# and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# Examples:
DEGREE = "\xC2\xB0"

def dms(float)
  degree, minute = float.divmod(1)
  degree = degree % 360
  minute = (60 * minute)
  second = (60 * minute) % 60
  format(%(#{degree}#{DEGREE}%02d'%02d"), minute, second)
end

# dms(30) == %(30°00'00")
# dms(350.5)  == %(350°30'00")
