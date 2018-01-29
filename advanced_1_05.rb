def rotate(matrix, degree)
  return_matrix = []
  matrix_row = []

  matrix[0].length.times do |i|
    matrix_row = []

    matrix.length.times do |j|
      matrix_row << matrix[j][i]
    end

    return_matrix << matrix_row.reverse
  end

  degree -= 90 
  degree.zero? ? return_matrix : rotate(return_matrix, degree)
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

p new_matrix1 = rotate(matrix1, 180)
new_matrix2 = rotate(matrix2, 180)

new_matrix1 == [[6, 9, 3], [2, 7, 4], [8, 5, 1]]
new_matrix2 == [[8, 0, 1, 5], [2, 4, 7, 3]]

