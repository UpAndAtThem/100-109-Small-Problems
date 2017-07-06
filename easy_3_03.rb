# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

def how_many_chars? str
  p "There are #{str.split(" ").join.size} characters in '#{str}'"
end

p "Enter a word or multiple words and I'll return the number of characters minus the spaces"
input_str = gets.chomp! 
how_many_chars? input_str

# ALTERNATIVE APPROACH
# print 'Please write word or multiple words: '
# input = gets.chomp
# number_of_characters = input.delete(' ').size
# puts "There are #{number_of_characters} characters in \"#{input}\"."
