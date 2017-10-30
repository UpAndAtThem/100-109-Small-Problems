def bubble_sort!(array)
  loop do
    swapped = 0
    0.upto(array.length - 1) do |index|
      if array[index + 1] && array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped += 1
      end
    end
    break if swapped == 0
  end
end

array = [5, 3, 4, 99, 6]
bubble_sort!(array)
# array == [3, 4, 5, 6, 99] 
