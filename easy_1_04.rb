#Write a method that counts the number of occurrences of each element in a given array.

# OUTPUT SHOULD BE

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

def count_occurrences(vehicles)
  vehicles.each_with_object(Hash.new(0)) do |vehicle, memo|
    memo[vehicle] += 1
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

p count_occurrences(vehicles)


# ALTERNATE APPROACH

# def count_occurrences(array)
#   occurrences = {}

#   array.each do |element|
#     occurrences[element] = array.count(element)
#   end

#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end



