#Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

#EXAMPLE
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

def tip_calculator bill, percentage
  percentage = percentage.to_f
  tip = (bill * (percentage/100))
  total = tip + bill
  puts "The tip is $#{sprintf('%.2f', tip)}" #sprintf is a formating function much like how C programming does it
  puts "The total adjusted bill is $#{sprintf('%.2f', total)}"
end

puts "--please enter the price of your bill."
bill = gets.chomp.to_i
puts "--please enter the tip percentage you want to leave."
percentage = gets.chomp.to_i

tip_calculator bill, percentage