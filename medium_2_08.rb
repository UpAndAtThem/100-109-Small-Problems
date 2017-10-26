# A featured number (something unique to this exercise) is an odd number that is a multiple of 7,
# and whose digits occur exactly once each. So, for example, 49 is a featured number, 
# but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, 
# and returns the next featured number that is greater than the argument. 
# Issue an error message if there is no next featured number.

# Examples:



# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

def featured(int)
  loop do
    int += 1
    return int if featured? int
    return "There is no match" if int.to_s.chars.length > 10 
  end
end

def no_digit_repeat(int)
  int.to_s.chars.uniq == int.to_s.chars
end

def featured?(int)
  int % 7 == 0 && int.odd? && no_digit_repeat(int)
end

featured 68