# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# Examples

def word_cap(word_string)
  word_arr = word_string.split.map do |word|
    word =~ /[\w+]/ ? word.capitalize : word
  end
  word_arr.join" "
end

# ALTERNATIVE APPROACH
# def word_cap(words)
#   words.split.map(&:capitalize).join(' ')
# end

puts word_cap('four score and seven')
puts word_cap('the javaScript language')
puts word_cap('this is a "quoted" word')