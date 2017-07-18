# Write a method that takes a String of digits, and returns the appropriate number as an integer.
# The String may have a leading + or - sign; if the first character is a +, your method should return a positive number
# if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

NUMBERS = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
            6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0' }

def string_to_integer(str)
  neg = true if str[0] == '-'
  num_str_arr = str.split('')
  num_str_arr.delete '-'
  num_str_arr.delete '+'
  int_arr = []
  num_str_arr.map do |digit|
    int_arr << NUMBERS.key(digit)
  end
  value = 0
  int_arr.each do |num|
    value = 10 * value + num
  end
  return value * -1 if neg
  value
end

string_to_integer '+12345' # returns the integer -12345

# ALTERNATIVE APPROACH use method from easy_4_07.rb
# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end