# Write a method that takes an array of strings,
# and returns an array of the same string values, 
# except with the vowels (a, e, i, o, u) removed.

# Example:

VOWELS = 'aeiouAEIOU'

def remove_vowels(strings)
  p strings.map { |string| string.delete(VOWELS)}
end

p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
