# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides 
# must be greater than the length of the longest side, 
# and all sides must have lengths greater than 0: 
# if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, 
# and returns a symbol :equilateral, :isosceles, :scalene, or :invalid 
# depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

def valid_triangle?(sides)
  hypotenuse = sides.max
  hypotenuse < sides.min(2).reduce(&:+)
end

def triangle(sides)
  return :invalid if !valid_triangle? sides
  triangle_type sides
end

def triangle_type(sides)
  case sides.uniq.length
  when 1
    :equilateral
  when 2
    :isosceles
  when 3
    :scalene
  end
end

triangle [4, 0, 3] # => :invalid
triangle [3, 3, 3] # => :equalateral
triangle [2, 4, 5] # => :scalene
triangle [3, 3, 5] # => :isosceles