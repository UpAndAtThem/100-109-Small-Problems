# Write a method that takes a sentence string as input, 
# and returns the same string with any sequence of the words 
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' 
# converted to a string of digits.

WORD_TO_DIGIT = {'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5,
                 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9}

def word_to_digit(word_string)
  WORD_TO_DIGIT.keys.each do |word_digit|
    word_string.gsub!(word_digit, WORD_TO_DIGIT[word_digit].to_s)
  end
  word_string
end

word_to_digit "Please call me at five five five six two five one. I've got quite the offer!"


