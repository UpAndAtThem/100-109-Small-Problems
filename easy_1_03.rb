# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# ----pseudo code----

# given a positive integer named "int"

# transform int into a string
# split the string at each character into a collection
# transform the collection into integer objects and return collection

# ----formal pseudo code----

# START

# Given a positive integer named "int"

# int = int.to_s
# SET int_arr = int.chars
# PRINT int_arr = int_arr.map { |int_char| int_char.to_i}

# END

def digit_list(int)
  int.to_s.chars.map(&:to_i)
end
