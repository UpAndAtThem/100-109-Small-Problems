#Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

(1..99).each{ |num| puts num if num % 2 == 0}

# #ALTERNATIVE APPROACH
# value = 1
# while value <= 99
#   puts value if value.even?
#   value += 1
# end
