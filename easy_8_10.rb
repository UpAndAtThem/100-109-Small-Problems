# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. 
# If the argument has an odd length, you should return exactly one character. If the argument has an even length,
# you should return exactly two characters.

def center_of(string)
  if string.length % 2 != 0
    string[string.length/2]
  else
    string[(string.length/2)-1, 2]
  end
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'