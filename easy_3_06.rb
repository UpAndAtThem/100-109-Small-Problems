#In this exercise, you will write a method named xor that takes two arguments, and returns true if exactly one of its arguments is true, false otherwise.

def xor? bool1, bool2
  return true if (bool1 == false && bool2 == true) || (bool1 == true && bool2 == false)
  return false
end

p xor? false, true
p xor? true, true
p xor? false, false
p xor? true, false

# ALTERNATIVE APPROACH
# def xor?(value1, value2)
#   return true if value1 && !value2
#   return true if value2 && !value1
#   false
# end