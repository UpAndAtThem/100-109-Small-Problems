# Write a method that takes two Array arguments in which each Array contains a list of numbers, 
# and returns a new Array that contains the product of every pair of numbers that can 
# be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# Examples:

def multiply_all_pairs(arr1, arr2)
  product_arr = []
  arr1.each do |arr1_num|
    arr2.each do |arr2_num|
      product_arr << arr1_num * arr2_num
    end
  end
  product_arr.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# ALTERNATIVE APPROACH

# def multiply_all_pairs(array_1, array_2)
#   products = []
#   array_1.each do |item_1|
#     array_2.each do |item_2|
#       products << item_1 * item_2
#     end
#   end
#   products.sort
# end