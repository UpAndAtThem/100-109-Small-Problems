#Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

(1..99).each{ |x| p x if x % 2 != 0 }

# #ALTERNATIVE APPROACH

# value = 1
# while value <= 99
#   puts value
#   value += 2
# end