#Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def print_num_times str, pos_int
  return if pos_int < 0
  pos_int.times {puts str}
end

print_num_times "hello", 4