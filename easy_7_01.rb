# Write a method that combines two Arrays passed in as arguments, 
# and returns a new Array that contains all elements from both Array arguments, 
# with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# Example:

def interleave(list1, list2)
  (list1.zip list2).flatten
end

arr1 = [1, 2, 3]
arr2 = ['a','b','c']

p interleave(arr1, arr2) == [1, 'a', 2, 'b', 3, 'c']

# ALTERNATIVE APPROACH
# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     p result << element << array2[index]
#   end
#   result
# end
