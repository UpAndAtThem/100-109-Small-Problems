# Write a method that takes a string argument and returns a new string,
# that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.
# You may not use String#squeeze or String#squeeze!.

def crunch(string)
  string_arr = string.chars
  return_arr = []
  string_arr.select do |current_char|
    next if return_arr[-1] == current_char
    return_arr << current_char
  end
  return_arr.join
end

# ALTERNATIVE APPROACH
# def crunch(text)
#   index = 0
#   crunch_text = ''
#   while index <= text.length - 1
#     crunch_text << text[index] unless text[index] == text[index + 1]
#     index += 1
#   end
#   crunch_text
# end