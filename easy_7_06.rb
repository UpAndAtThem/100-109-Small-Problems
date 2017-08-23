# Modify the method from the previous exercise so it ignores 
# non-alphabetic characters when determining whether it should uppercase or lowercase each letter.
# The non-alphabetic characters should still be included in the return value; 
# they just don't count when toggling the desired case.

# Example:

def staggered_case(string)
  downcased_string = string.downcase
  return_string = ''
  should_capitalize = true
  downcased_string.split("").each do |character|
    if character =~ /[a-z]/i
      should_capitalize ? return_string << character.upcase : return_string << character
      should_capitalize = !should_capitalize
    else
      return_string << character
    end
  end
  return_string
end
