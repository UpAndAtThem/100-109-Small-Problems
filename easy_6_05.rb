# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

# Examples:

def reverse_arr(arr)
  return_arr = []
  arr.each do |item|
    return_arr.unshift(item)
  end 
  return_arr
end

p reverse_arr([1,2,3,4]) == [4,3,2,1]          # => true
p reverse_arr(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse_arr(['abc']) == ['abc']              # => true
p reverse_arr([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse_arr(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true

