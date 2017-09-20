#Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

def int_range_arr(int)
  a =* (1..int)
end

p int_range_arr(100)

# ALTERNATIVE APPROACH
# def sequence(number)
#   (1..number).to_a
# end