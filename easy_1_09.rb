#Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# these should evaluate to true
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

def sum pos_int
  sum = 0
  int_arr = pos_int.to_s.split("")
  int_arr = int_arr.map { |s| s.to_i } # take each string number and turn to an integer number
  int_arr.each{ |num| sum += num }
  return sum
end

p sum 101_010_101_010


# #ALTERNATIVE APPROACH
# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end