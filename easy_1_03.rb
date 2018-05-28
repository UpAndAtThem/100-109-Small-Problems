# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# ----pseudo code----

# given a positive integer named "int"

# transform int into a string
# split the string at each character into a collection
# transform the collection into integer objects and return collection

# ----formal pseudo code----

# START

# Given a positive integer named "int"

# SET string_int = transform int to string representation
# SET string_int_arr = transform string_int into a collection delimiting at every char

# SET count = 1, result_arr = []

# WHILE count is less than or equal to the number of elements in string_int_arr
#   result_arr += transform elem at position count to an integer and add it to result_arr

# PRINT result_arr

# END

def digit_list(int)
  int.to_s.chars.map(&:to_i)
end
