def display_diamond(size)
  count = 1
  rows_from_center = size / 2
  rows_from_center.times do |_|
    p ("*" * count).center size
    count += 2
  end
  p ("*" * size).center size
  count = size - 2
  rows_from_center.times do |_|
    p ("*" * count).center size
    count -= 2
  end
end

display_diamond 23

# ALTERNATIVE APPROACH
# def print_row(grid_size, distance_from_center)
#   number_of_stars = grid_size - 2 * distance_from_center
#   stars = '*' * number_of_stars
#   puts stars.center(grid_size)
# end

# def diamond(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(0) { |distance| print_row(grid_size, distance) }
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
# end

