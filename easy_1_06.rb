# Write a method that takes one argument, a string containing one or more words, and returns the given string with all five or more letter words reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

def revfive str 
  returned_string = ""
  str.split.each do |word|
    if word.size >= 5 ? returned_string += word.reverse! + " " : returned_string += word + " "
    end
  end
  returned_string
end

phrase = "hello world yall sweet"

puts revfive phrase
puts revfive('Professional')         
puts revfive('Walk around the block')
puts revfive('Launch School')    
puts revfive "hey it's yzarc yo"    

p phrase # original phrase not mutated

# Alternative Method

# def reverse_words(string)
#   words = []

#   string.split.each do |word|
#     word.reverse! if word.size >= 5
#     words << word
#   end

#   words.join(' ')
# end

