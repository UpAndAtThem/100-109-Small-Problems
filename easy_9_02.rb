# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits.
#  For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, 
# unless the argument is a double number; double numbers should be returned as-is.

def twice(int)
  int_string_arr = int.to_s.chars()
  return int * 2 if int_string_arr.length % 2 != 0
  left_side = int_string_arr[0, int_string_arr.length/2].join.to_i
  right_side = int_string_arr[int_string_arr.length/2, int_string_arr.length/2].join.to_i
  left_side == right_side ? int : int * 2
  
end

twice(3) == 6
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
