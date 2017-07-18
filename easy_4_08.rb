NUMBERS = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
            6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0' }

def string_to_integer(str)
  neg = true if str[0] == '-'
  num_str_arr = str.split('')
  num_str_arr.delete '-'
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

string_to_integer '-12345' # returns the integer -12345
