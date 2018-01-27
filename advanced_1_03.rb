def transpose(matrix)
  matricies = []
  new_matrix = []
  matrix.each_with_index do |val, i|
    new_matrix = []
    3.times do |x|
      new_matrix << matrix[x][i]
    end
    matricies << new_matrix
  end
  matricies
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)
new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]