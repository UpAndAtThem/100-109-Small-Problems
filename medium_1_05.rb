def print_half_diamond(distance, size, is_top)
  count = is_top ? 1 : (size - 2) 
  count_change = 2
  distance.times do |_|
    p ("*" * count).center size
    count += count_change if is_top
    count -= count_change if !is_top
  end
end

def display_diamond(size)
  rows_from_center = size / 2
  print_half_diamond rows_from_center, size, true
  p ("*" * size).center size
  print_half_diamond rows_from_center, size, false
end

display_diamond 19

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

