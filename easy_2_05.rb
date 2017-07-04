#Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

#Example Execution
# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

def greeting str
  str[-1] == '!' ? "HELLO #{str.chop.upcase}. WHY ARE WE SCREAMING?" : "Hello #{str.capitalize}."
end

puts "--Hello, what is your name?"
name = gets.chomp

p greeting name