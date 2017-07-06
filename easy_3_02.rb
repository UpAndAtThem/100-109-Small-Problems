# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

# Example

# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

def arith_operation pos_int_arr
  operators = ['+','-','*','/','%','**'].map! { |x| x.to_sym }
  operators.size.times {|x| p "==> #{pos_int_arr[0]} #{operators[x]} #{pos_int_arr[1]} = " + pos_int_arr.reduce(operators[x]).to_s} 
end

arr = []
print "==> Enter the first number: "
arr << gets.chomp.to_i
print "==> Enter the second number: "
arr << gets.chomp.to_i

arith_operation arr

# ALTERNATIVE METHOD
# def prompt(message)
#   puts "==> #{message}"
# end

# prompt("Enter the first number:")
# first_number = gets.chomp.to_i
# prompt("Enter the second number:")
# second_number = gets.chomp.to_i

# prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
# prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
# prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
# prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
# prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
# prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")