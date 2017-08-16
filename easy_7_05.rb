# Write a method that takes a String as an argument,
# and returns a new String that contains the original value using
# a staggered capitalization scheme in which every other character is capitalized, 
# and the remaining characters are lowercase. Characters that are not letters should not be changed, 
# but count as characters when switching between upper and lowercase.

# Example:

def staggered_case(multi_word_string)
  word_arr = multi_word_string.split
  modified_arr = word_arr.map do |word|
    return_str = []
    word.split("").each_with_index do |let, ind|
      if ind % 2 == 0
        return_str << let.upcase
      else
        return_str << let.downcase
      end
    end
    return_str.join
  end
  modified_arr.join" " 
end

p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
