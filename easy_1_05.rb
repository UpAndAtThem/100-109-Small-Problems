# ----pseudo code----

# given a string called string

# -split string into a collection of words delimited by the space char into a variable named strings
# -reverse the elements in strings
# -concatenate all the elements together with a space after (the last element doen't get the concatenated space) into a string

# ----formal pseudo code----

# START

# given a string called str

# SET strings = split str into a collection of strings delimited by the space character
# strings = reverse the collection
# SET reversed_string = '', iteration = 1

# WHILE iteration <=  num of elements in strings
#   IF iteration <= space of last element in strings
#     reversed_string += strings elem at position iteration with a concatenated space char
#   ELSE
#     reversed_string += strings elem at position iteration
#   iteration += 1

# PRINT strings

# END

def reverse_sentence str 
 str.split.reverse.join' '
end
