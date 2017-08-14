def triangle(size)
  size.times do |star|
    str = ''
    (star+1).times {|_| str << '*' }
    puts str.rjust(size)
  end
end
num = 15
triangle num