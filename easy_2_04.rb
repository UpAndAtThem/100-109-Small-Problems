#Build a program that displays when the user will retire and how many years they have to work till retirement.

#EXAMPLE PROGRAM EXECUTION

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

def retirement_dur age, age_of_ret
  curr_year = Time.now.year
  years_til_ret = age_of_ret - age
  
  puts "It's #{curr_year}. You will retire in #{curr_year + years_til_ret}"
  puts "you have only #{years_til_ret} years of work to go!"
end

puts "--How old are you?"
age = gets.chomp.to_i
puts "--What age do you want to retire?"
age_of_ret = gets.chomp.to_i

retirement_dur age, age_of_ret