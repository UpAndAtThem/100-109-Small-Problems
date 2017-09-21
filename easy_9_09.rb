# Write a method that determines the mean (average) of the three scores passed to it, 
# and returns the letter value associated with that grade.

# Numerical Score Letter  Grade
# 90 <= score <= 100  'A'
# 80 <= score < 90  'B'
# 70 <= score < 80  'C'
# 60 <= score < 70  'D'
# 0 <= score < 60 'F'

def letter_grade(percentage)
  case percentage
  when (90..100)
    'A'
  when (80...90)
    'B'
  when (70...80)
    'C'
  when (60...90)
    'D'
  else
    "F"
  end 
end

def grade_mean(grade_arr)
  mean = 0
  grade_arr.each do |grade|
    mean += grade
  end
  p mean/grade_arr.length
  letter_grade(mean/grade_arr.length)
end

grade_mean [91,92,93]