# Write a method that takes a string argument,
# and returns true if all of the alphabetic characters inside the string are uppercase, 
# false otherwise. Characters that are not alphabetic should be ignored.

def upcase?(string)
  result_arr = string.chars.select do |letter|
    letter =~ /[A-Za-z]/
  end
  result_arr.all? do |letter|
    letter == letter.upcase
  end
end

upcase?('t') == false
upcase?('T') == true
upcase?('Four Score') == false
upcase?('FOUR SCORE') == true
upcase?('4SCORE!') == true
upcase?('') == true