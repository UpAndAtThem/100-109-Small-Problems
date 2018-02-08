def transpose(matrix)
  result = []
  current_arr = []

  matrix[0].length.times do |index|
    matrix.each do |arr|
      current_arr << arr[index]
    end
    result << current_arr
    current_arr = []
  end
  result
end

transpose([[1, 2, 3, 4]]) # returns [[1], [2], [3], [4]]
transpose([[1], [2], [3], [4]]) # returns [[1, 2, 3, 4]]
transpose([[1]]) # returns [[1]]
