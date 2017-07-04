#Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.

# these should evaluate to true
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

def average arr
  tot = arr.inject {|sum, i| sum + i} #sum is the accumulator in this method.  Which each i element in the collection will be added to sum.
  tot.to_f/arr.size 
end
p average [1, 5, 87, 45, 8, 8]
p average([1, 5, 87, 45, 8, 8]) == 25
p average([9, 47, 23, 95, 16, 52]) == 40

# ALTERNATIVE APPROACH

# def average(numbers)
#   sum = numbers.reduce { |sum, number| sum + number }
#   sum / numbers.count
# end