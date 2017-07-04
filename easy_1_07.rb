#Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

def onezero num
  #print num times, alternating 1's and 0's starting with 1
  return_val = ""

  num.times do |x|
    return_val << '0' if x % 2 != 0
    return_val << '1' if x % 2 == 0
  end

  return_val
end

p onezero 6
p onezero 9
p onezero 4
p onezero 7


# These should evaluate to true
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'