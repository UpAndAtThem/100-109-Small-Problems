# Write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.

# ----pseudo code----
# given a positive integer named length
# initialize counter set to 0
# initialize result_string to ''
# loop length number of times
#   -if counter is even
#        add "1" to result_string
#     -otherwise
#        add '0' to result_string
# return result_string

# ----formal pseudo code----

# START

# given a positive integer named length

# counter = 1, result_string = ''

# While counter <= length
#   IF counter is odd
#     result_string += "1"
#   ELSE
#     result_string += "0"

#   counter += 1

# PRINT result_string

# END

def stringy(int)
  1.upto(int).with_object('') do |num, result_string|
    result_string << (num.odd? ? '1' : '0')
  end
end
