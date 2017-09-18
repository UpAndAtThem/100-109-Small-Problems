def fizzbuzz(start_num, end_num)
  end_num.times do |_|
    if start_num % 3 == 0 && start_num % 5 == 0
      puts "fizzbuzz"
    elsif start_num % 5 == 0
      puts "buzz"
    elsif start_num % 3 == 0
      puts 'fizz'
    else
      puts start_num
    end
    start_num += 1
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz