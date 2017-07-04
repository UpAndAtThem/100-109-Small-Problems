#Write a method that counts the number of occurrences of each element in a given array.

# OUTPUT SHOULD BE

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

def count_occurrences whole_list
  
  return_hash = {} # this will be the returned value of key "vehicle type" and the value "count"
  unique_items = whole_list.uniq # list of unique elements from whole_list
  
  unique_items.each{|unique_item| return_hash[unique_item] = 0}#assigns the uniqe array to a hash with 0 being the value (count) and each element in unique_items being the key
    
  whole_list.each{|item| return_hash[item] += 1} # adds 1 to each insance from whole_list arr
  
  return_hash

end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

list = count_occurrences(vehicles)

p list


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



