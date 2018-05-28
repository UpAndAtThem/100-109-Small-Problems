# Write a method that takes one integer argument, which may be positive, negative, or zero.
# This method return true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# -----pseudo code------

# given an integer

# check to see if integer modulo two is not equivalent to zero
# return boolean value from the modulus (remainder) operation

# ------formal pseudo code-------

# START

# given an integer initialized at a method level scope named int

# PRINT int % 2 != 0

# END 

def is_odd?(int)
  int.odd?
end
