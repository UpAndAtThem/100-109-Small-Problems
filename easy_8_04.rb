def substrings(string)
  substring_arr = []
  count = 0
  string.split("").each do |letter|
    (string.length - count).times do |num|
      substring_arr << string[count, num + 1]
    end
    count += 1
  end
  substring_arr
end

p substrings('abcde') 


# ALTERNATIVE APPROACH
# def substrings(string)
#   results = []
#   (0...string.size).each do |start_index|
#     this_substring = string[start_index..-1]
#     results.concat(substrings_at_start(this_substring))
#   end
#   results
# end

#OUTPUT
# # [
# #   'a', 'ab', 'abc', 'abcd', 'abcde', 
# #   'b', 'bc', 'bcd', 'bcde',
# #   'c', 'cd', 'cde',
# #   'd', 'de',
# #   'e'
# # ]