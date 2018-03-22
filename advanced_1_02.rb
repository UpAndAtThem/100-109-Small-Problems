def star(size)
  middle = size/2
  position = 0
  gap_between = (size - 3)/2

  size.times do |count|
    if count == middle
      puts "#{"*" * size}"
      position = (size - 3)/2
      gap_between = 0
      next
    end

    puts "#{" " * position}*#{" " * gap_between}*#{" " * gap_between}*#{' ' * position}"
    position, gap_between = next_row_beam_spacing(size, position, gap_between, count)
  end
end

def next_row_beam_spacing(size, position, gap_between, count)
  middle = size/2

  position = position + 1 if count < middle
  gap_between = gap_between - 1 if count < middle

  position -= 1 if count > middle
  gap_between += 1 if count > middle
  return position, gap_between
end


star 35