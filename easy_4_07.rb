# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.
# # Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

# Examples
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

NUMBERS = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
            6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0' }

def string_to_integer(str)
  num_str_arr = str.split ''
  int_arr = []
  num_str_arr.map do |digit|
    int_arr << NUMBERS.key(digit)
  end
  value = 0
  int_arr.each do |num|
    value = 10 * value + num
  end
  value
end

string_to_integer '12345' # returns the integer 12345
