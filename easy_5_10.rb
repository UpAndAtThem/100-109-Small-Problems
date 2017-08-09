# Write a method that will take a short line of text, and print it within a box.

# Example:
def print_in_box(string)
  p "+-" + (string.chars.map{ |x| "-"}).join + "-+"
  p '|'.ljust(0) + '|'.rjust(string.size + 3)
  p '|'+ string.center(string.size + 2) + "|"
  p '|'.ljust(0) + '|'.rjust(string.size + 3)
  p "+-" + (string.chars.map{ |x| "-"}).join + "-+"
end

print_in_box('To boldly go where no one has gone before.')


# >> OUTPUT
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+


# ALTERNATIVE APPROACH
# def print_in_box(message)
#    horizontal_rule = "+#{'-' * (message.size + 2)}+"
#    empty_line = "|#{' ' * (message.size + 2)}|"

#    puts horizontal_rule
#    puts empty_line
#    puts "| #{message} |"
#    puts empty_line
#    puts horizontal_rule
# end






