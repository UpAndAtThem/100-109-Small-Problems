def print_in_box(str)
  puts horizontal_edge(str)
  puts above_or_below_phrase(str)
  puts phrase(str)
  puts above_or_below_phrase(str)
  puts horizontal_edge(str)
end

def horizontal_edge(str)
  "+#{'-' * (str.length + 2)}+"
end

def above_or_below_phrase(str)
  "|#{' ' * (str.length + 2)}|"
end

def phrase(str)
  "| #{str} |"
end

print_in_box('hello world')
