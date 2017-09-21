# Write a method which takes a grocery list (array) of fruits with quantities 
# and converts it into an array of the correct number of each fruit.

def buy_fruit(fruit_arr)
  fruit_arr.each_with_object([]) do |fruit_and_num, basket|
    fruit = fruit_and_num[0]
    num_of_fruit = fruit_and_num[1]

    num_of_fruit.times { |_| basket << fruit}
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

# ALTERNATIVE APPROACH
# def buy_fruit(list)
#   list.map { |fruit, quantity| [fruit] * quantity }.flatten
# end