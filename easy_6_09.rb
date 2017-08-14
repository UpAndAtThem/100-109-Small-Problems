# Write a method named include? that takes an Array and a search value as arguments.
# This method should return true if the search value is in the array, false if it is not. 
# You may not use the Array#include? method in your solution.

def include?(num_arr, search_num)
  searched_arr = num_arr.select do |num|
    search_num == num
  end
  
  (searched_arr.empty?) ? false : true
end

p include?([1,2,3,4,5], 3) == true
