# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

S_METER_S_FT = 10.7639

def sq_footage length_m, width_m
  squared = (length_m.to_f * width_m)
  p "The area of the room is #{squared} square meters. (#{(squared * S_METER_S_FT).round 2} Square Feet.)"
end

puts "-- What is the length of the room in meters?"
length = gets.chomp.to_f
puts "-- What is the width of the room in meters?"
width = gets.chomp.to_f

sq_footage length, width




