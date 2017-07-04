# Write a method that takes one argument, a string, and returns the same string with the words in reverse order.


# all the above tests should be true

def reverse_sentence string 
  i = -1
  arr = []
  string_arr = string.split " "
  
  string_arr.each do |word|  # don't reinvent the wheel, this is basically the .reverse Arr Method
    arr << string_arr[i]
    i -= 1  
  end
  
  arr.join " "  
end

x = reverse_sentence "Hello my name is egor"

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'



# ALTERNATIVE METHOD

# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end