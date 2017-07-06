# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

def is_palindrome? str
  str.split("").reverse.join == str ? true : false 
end

p is_palindrome? "ifihadahifi"
p is_palindrome? "yo"
p is_palindrome? "Mom"
p is_palindrome? "mom"
p is_palindrome? "madamimadam"

# ALTERNATIVE APPROACH
# def palindrome?(string)
#   string == string.reverse
# end