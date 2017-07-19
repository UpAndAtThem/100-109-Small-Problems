# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers.
# In this exercise and the next, you're going to reverse those methods.
# Write a method that takes a positive integer or zero, and converts it to a string representation.

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

integer_to_string 100 # returns '100'