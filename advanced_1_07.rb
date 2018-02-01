# Write a method that takes two sorted Arrays as arguments,
# and returns a new Array that contains all elements
# from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array.
#Y ou must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

# Examples:

def merge(first_arr, second_arr)
  return_arr = []

  loop do
    break if first_arr.empty? || second_arr.empty?
      if first_arr[0] <= second_arr[0]
        return_arr << first_arr.shift
      else
        return_arr << second_arr.shift
      end
  end

  loop do
    break if first_arr.empty? && second_arr.empty?
    if first_arr.empty?
      return_arr << second_arr.shift
    else
      return_arr << first_arr.shift
    end   
  end

  return_arr
end

p merge([69, 100_000, 100_001], [50, 99, 6969]) #== [50, 69, 99, 6969, 100000, 100001]
