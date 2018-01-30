def fibonacci(num)
  fib = [1, 1]
  (num - 2).times do |_|
    fib = [fib[-1], fib[-2] + fib[-1] % 10] #when you add the last digit of a fib (which is where the modulo operator comes in) to an existing fib the last number would remain the same but you're not dealing with huge numbers that the computers processor can't handle.
  end
  fib[-1].to_s[-1]
end
