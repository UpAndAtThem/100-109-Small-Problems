# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. 
# The return value should be arranged in order from shortest to longest substring.

# Examples:

def substrings_at_start(string)
  char_arr = string.split("")
  num_times = 1
  substring_arr = []

  char_arr.each do |letter|
    substring_arr << char_arr[0, num_times].join
    num_times += 1
  end
  substring_arr
end

# ALTERNATIVE APPROACH

# def substrings_at_start(string)
#   result = []
#   0.upto(string.size - 1) do |index|
#     result << string[0..index]
#   end
#   result
# end