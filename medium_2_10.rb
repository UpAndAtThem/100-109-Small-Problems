def sum_square_difference(int)
  sum_range(int) - sum_square_range(int)
end

def sum_range(int)
  (1..int).reduce(:+) ** 2
end

def sum_square_range(int)
  (1..int).reduce { |accum, num| accum += num ** 2} 
end

sum_square_difference(3) # => 22
