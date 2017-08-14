# Reversed Arrays (Part 1)

# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!

def reverse_arr(arr)
  left_index = 0
  right_index = -1

  while left_index < (arr.size) / 2
    arr[left_index], arr[right_index] = arr[right_index], arr[left_index]
    left_index += 1
    right_index -= 1
  end
  arr
end
arr = [1,2,3,4,5]
p reverse_arr arr