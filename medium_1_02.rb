# Write a method that can rotate the last n digits of a number. For example:

# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

def rotate_arr(arr)
  result_arr = arr.map{|num| num}
  result_arr << result_arr[0]
  result_arr.shift
  result_arr
end


def rotate_rightmost_digits(number, num_rotated)
  num_size = number.to_s.length
  num_arr = number.to_s.chars
  nums_to_be_rotated = num_arr[num_size - num_rotated, num_rotated]
  remaining_left_nums = number.to_s.chars[0, num_size - num_rotated]

  rotate_result = rotate_arr nums_to_be_rotated
  (remaining_left_nums + rotate_result).join.to_i
end

rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

# ALTERNATIVE APPORACH
# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end