# Write a method that takes an Array of numbers and then returns the sum of the sums 
# of each leading subsequence for that Array. You may assume that the Array always contains 
# at least one number.

def sum_of_sums(int_arr)
  total = 0
  number_times = 1
  int_arr.each do |num|
    total += int_arr[0, number_times].sum
    number_times += 1
  end
  total
end

# ALTERNATIVE APPROACH

# def sum_of_sums(numbers)
#   sum_total = 0
#   1.upto(numbers.size) do |count|
#     sum_total += numbers.slice(0, count).reduce(:+)
#   end
#   sum_total
# end