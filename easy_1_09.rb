#Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# these should evaluate to true
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

def sum(int)
  int.to_s.split("").map(&:to_i).reduce(&:+)
end

# #ALTERNATIVE APPROACH
# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end