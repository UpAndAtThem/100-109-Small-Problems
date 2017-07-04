#Write a method that takes one integer argument, which may be positive, negative, or zero. This method return true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

def is_odd? int
  int.abs % 2 != 0 ? true : false
end

p is_odd? -2
p is_odd? -123


