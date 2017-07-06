#Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

def mult num1, num2
  num1 * num2
end

def square num
  mult num, num
end

p square 5