# Write a method that takes a string as an argument
# and returns a new string in which every uppercase letter is replaced by its lowercase version,
# and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# Example:

def swapcase(multi_word_string)
  word_arr = multi_word_string.split"" 
  modified_arr = word_arr.map do |char|
    if char.match(/[a-z]/)
      char.upcase
    elsif char.match(/[A-Z]/)
      char.downcase
    else
      char
    end
  end
  modified_arr.join""
end

swapcase('CamelCase') == 'cAMELcASE'                  #=> true
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'  #=> true