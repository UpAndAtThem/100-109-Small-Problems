#Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

def shrt_lng_shrt str1, str2
  str1.size < str2.size ? str1 + str2 + str1 : str2 + str1 + str2
end

ans1 = shrt_lng_shrt 'abc', 'defgh'
ans2 = shrt_lng_shrt 'abcde', 'fgh'
ans3 = shrt_lng_shrt '', 'xyz'

p ans1 == "abcdefghabc"  #These 3 examples evaluate to true
p ans2 == "fghabcdefgh"
p ans3 == "xyz"

p shrt_lng_shrt("hello","you") == "youhelloyou" #the parenthesis are needed when making a bool expression when the method's return is being used as one of the objects

# ALTERNATIVE APPROACH

# def short_long_short(string1, string2)
#   if string1.length > string2.length
#     string2 + string1 + string2
#   else
#     string1 + string2 + string1
#   end
# end