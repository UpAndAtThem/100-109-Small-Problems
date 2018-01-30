def rotate(matrix, degree)
  return_matrix = []
  matrix_row = []
  row_length = matrix[0].length
  matrix_size = matrix.length

  row_length.times do |length|
    matrix_row.clear

    matrix_size.times do |height|
      matrix_row << matrix[height][length]
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
p new_matrix2 = rotate(matrix2, 180)

p new_matrix1 == [[6, 9, 3], [2, 7, 4], [8, 5, 1]]
p new_matrix2 == [[8, 0, 1, 5], [2, 4, 7, 3]]
