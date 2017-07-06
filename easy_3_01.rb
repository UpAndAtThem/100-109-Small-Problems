# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

def arr_sixth_num?
  input_arr = []
  times_wordage = ['1st', '2nd', '3rd', '4th', '5th', '6th']

  6.times do |x|
    print "==> Enter the #{times_wordage[x]} number: "
    num = gets.chomp.to_i
    input_arr << num
  end

  (input_arr[0..4].include? input_arr[-1]) ? "The number #{input_arr[-1]} appears in #{input_arr[0..4]}" : "The number #{input_arr[-1]} isn't in #{input_arr[0..4]}"
   
end

p arr_sixth_num?

# ALTERNATIVE APPROACH
# numbers = []

# puts "Enter the 1st number:"
# numbers << gets.chomp.to_i
# puts "Enter the 2nd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 3rd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 4th number:"
# numbers << gets.chomp.to_i
# puts "Enter the 5th number:"
# numbers << gets.chomp.to_i
# puts "Enter the last number:"
# last_number = gets.chomp.to_i

# if numbers.include? last_number
#   puts "The number #{last_number} appears in #{numbers}."
# else
#   puts "The number #{last_number} does not appear in #{numbers}."
# end