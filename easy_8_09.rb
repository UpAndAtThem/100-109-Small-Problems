#Write a method that takes a positive integer as an argument and returns that number with its digits reversed with the zeros dropped. Examples:

def reversed_number(int)
  reverse_arr = int.to_s.split("").reverse
  result_arr = reverse_arr.select do |string_int|
    string_int.to_i != 0 
  end
  result_arr.join("").to_i
end

reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # Note that zeros get dropped!
reversed_number(1) == 1
