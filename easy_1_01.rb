# ------Pseudo Code--------- 

# given two variables as arguments a string and a positive integer

# loop the amount of times as the given positive integer
  # print string to the screen

# ------Formal Pseudo Code--------

# Given two variables as arguments a string and a pos. integer

# SET count = 0

# WHILE count <= 3
#   PRINT string
# END

def repeat(string, int)
  1.upto(int) { |_| puts string}
end

repeat "hello world", 3