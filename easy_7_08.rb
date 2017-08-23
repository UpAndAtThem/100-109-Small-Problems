# Write a method that takes two Array arguments in which each Array contains a list of numbers,
# and returns a new Array that contains the product of each pair of numbers from the arguments 
# that have the same index. You may assume that the arguments contain the same number of elements.

# Examples:

def multiply_list(num_arr1, num_arr2)
  size = num_arr1.size
  result_arr = []
  size.times do |i|
    result_arr << num_arr1[i] * num_arr2[i]
  end
  result_arr
end

# ALTERNATIVE APPROACH

# def multiply_list(list_1, list_2)
#   products = []
#   list_1.each_with_index do |item, index|
#     products << item * list_2[index]
#   end
#   products
# end