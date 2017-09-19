#Write a method that takes a string, and returns a new string in which every consonant character is doubled. 
#Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

def double_consonants(string)
  result_string = ''
  string.each_char do |letter|
    if (letter =~ /[b-df-hj-np-tv-z]/i) == 0
      result_string << letter << letter
    else
      result_string << letter
    end
  end
  result_string
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""