#Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

def int_pal int
  int.to_s == int.to_s.reverse ? true : false
end

p int_pal 34543
p int_pal 123210
p int_pal 22
p int_pal 5

# ALTERNATIVE APPROACH

# def palindromic_number?(number)
#   palindrome?(number.to_s)
# end