# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

NUM_AS_WORD = %w(zero, one, two, three, four, five, 
                 six, seven, eight, nine, ten, eleven,
                 twelve, thirteen, fourteen, fifteen,
                 sixteen, seventeen, eighteen, nineteen)

def alphabetic_number_sort(num_arr)
  word_arr = num_arr.map do |x|
    NUM_AS_WORD[x]
  end
  word_arr.sort
end

p alphabetic_number_sort((0..19).to_a)

# ALTERNATIVE APPROACH
# NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.sort_by { |number| NUMBER_WORDS[number] }
# end