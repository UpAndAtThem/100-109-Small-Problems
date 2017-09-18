# Write a method that takes a string, and returns a new string in which every character is doubled.

# Examples:

def repeater(string)
  repeat_string = ""
  string.split("").each do |letter|
    2.times do |_|
      repeat_string << letter
    end
  end
  repeat_string
end

# ALTERNATIVE APPROACH

# def repeater(string)
#   result = ''
#   string.each_char do |char|
#     result << char << char
#   end
#   result
# end

