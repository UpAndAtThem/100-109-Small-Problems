# Write a method that rotates an array by moving the first element to the end of the array. 
# The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

def rotate_arr(arr)
  result_arr = arr.map{|num| num}
  result_arr << result_arr[0]
  result_arr.shift
  result_arr
end

arr = [1, 2, 3, 4, 5]

rotate_arr(arr)

# ALTERNATIVE APPROACH
# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end