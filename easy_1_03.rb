#Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

def list_digits pos_int
  return "you need a positive number" if pos_int < 0
  list_of_digits = pos_int.to_s.split("")
  list_of_digits = list_of_digits.map {|digit| digit.to_i}
end

p list_digits 33333


# Alternative Aproach

# def digit_list(number)
#   number.to_s.chars.map(&:to_i)
# end

# p digit_list 444444