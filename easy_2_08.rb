# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Example Execution

# --Please enter an integer greater than 0:
# 5
# --Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.

 
# --Please enter an integer greater than 0:
# 6
# --Enter 's' to compute the sum, 'p' to compute the product.
# p
# --The product of the integers between 1 and 6 is 720.

def one_to_x_arr num
  arr = []
  num.times {|x| arr << x + 1 }
  arr
end

def prod_or_sum_calc
  selection = ''
  puts "--Please enter an integer greater than 0:"
  user_int = gets.chomp!.to_i

  until ['p', 's'].include? selection
    puts "--Enter 's' to compute the sum, or 'p' to compute the product"
    selection = gets.chomp.downcase
  end

  case selection
    when 'p'
      arr = one_to_x_arr user_int
      answer = arr.reduce(:*)
      puts "--The product of the integers between 1 and #{user_int} is #{answer}."
    when 's'
      arr = one_to_x_arr user_int
      answer = arr.reduce(:+)
      puts "--The sum of the integers between 1 and #{user_int} is #{answer}."
  end
end

prod_or_sum_calc

# ALTERNATIVE APPROACH
# def compute_sum(number)
#   total = 0
#   1.upto(number) { |value| total += value }
#   total
# end

# def compute_product(number)
#   total = 1
#   1.upto(number) { |value| total *= value }
#   total
# end

# puts ">> Please enter an integer greater than 0"
# number = gets.chomp.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp

# if operation == 's'
#   sum = compute_sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# elsif operation == 'p'
#   product = compute_product(number)
#   puts "The product of the integers between 1 and #{number} is #{product}."
# else
#   puts "Oops. Unknown operation."
# end