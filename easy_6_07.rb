# Write a method that takes an Array as an argument, and returns two Arrays that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# Examples:

def halvsies(array)
  arr1 = array.slice(0, (array.size/2.0).ceil)
  arr2 = array.slice(arr1.size, array.size - arr1.size)
  [arr1, arr2]
end

p halvsies([1, 2, 3, 4, 5])
# p halvsies([1, 5, 2, 4, 3])
# p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]