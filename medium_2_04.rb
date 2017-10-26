# Write a method that takes a string as argument, 
# and returns true if all parentheses in the string are properly balanced, 
# false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Examples:

def balanced?(str)
  parentheses = str.chars.select { |char| ['(', ')'].include? char}
  count = 0
  parentheses.each do |par|
    count += 1 if par == '('
    count -= 1 if par == ')'
    break if count < 0
  end
  count == 0
end

balanced?('What (is) this?') == true
