# A triangle is classified as follows:

# right: One angle of the triangle is a right angle (90 degrees)
# acute: All 3 angles of the triangle are less than 90 degrees
# obtuse: One angle is greater than 90 degrees.
# To be a valid triangle, the sum of the angles must be exactly 180 degrees, 
# and all angles must be greater than 0: 
# if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol 
# :right, :acute, :obtuse, or :invalid 
# depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about floating point errors. 
# You may also assume that the arguments are specified in degrees.

# Examples:



def triangle(angle1, angle2, angle3)
  sides = [angle1, angle2, angle3]
  return :invalid if invalid_triangle? [angle1, angle2, angle3]
  return :acute if acute? sides
  return :obtuse if obtuse? sides
  return :right if right? sides
end

def invalid_triangle?(angles)
  angles.reduce(&:+) != 180 || angles.any? { |elem| elem == 0}
end

def acute?(sides)
  sides.all? { |angle| angle < 90 }
end

def obtuse?(sides)
  sides.any? { |angle| angle > 90}
end

def right?(sides)
  sides.any? { |angle| angle == 90}
end

triangle 91, 88, 1

