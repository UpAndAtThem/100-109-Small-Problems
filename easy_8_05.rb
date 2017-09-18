def substring_arr(string)
  substring_arr = []
  count = 0
  string.split("").each do |letter|
    (string.length - count).times do |num|
      substring_arr << string[count, num + 1] if string[count, num + 1].length > 1 
    end
    count += 1
  end
  substring_arr
end

def palindromes(string_arr)
  palindrome_arr = []
  string_arr.each do |sub_string|
    end_pos = -1
    true_count = 0
    ((sub_string.length)/2).times do |num|
      if sub_string[num] == sub_string[end_pos]
        true_count += 1
      end
      end_pos -= 1
    end
    palindrome_arr << sub_string if true_count == (sub_string.length)/2
  end
  palindrome_arr
end

# ALTERNATIVE APPROACH
# def palindromes(string)
#   all_substrings = substrings(string)
#   results = []
#   all_substrings.each do |substring|
#     results << substring if palindrome?(substring)
#   end
#   results
# end

# def palindrome?(string)
#   string == string.reverse && string.size > 1
# end

