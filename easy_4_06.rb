# Write a method that takes an Array of numbers
# and returns an Array with the same number of elements
# each element has the running total from the original Array.
# Examples:

def running_total(num_arr)
  total = 0
  num_arr.map { |x| total += x }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []