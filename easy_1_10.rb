# Write a method that takes two arguments, a positive integer and a boolean,
# and calculates the bonus for a given salary. If the boolean is true,
# the bonus should be half of the salary.
# If the boolean is false, the bonus should be 0.

# ----pseudo code----
# given an int named salary, and a bool named gets_bonus

# -if gets_bonus is true return salary / 2
# -otherwise return 0

# ----formal pseudo code----

# START

# given an int named salary, and a bool named gets_bonus
# SET bonus_amount = 0
# IF gets_bonus is true
#   - bonus_amount = salary / 2

# PRINT bonus_amount

# END

def calculate_bonus(salary, gets_bonus)
  gets_bonus ? salary / 2 : 0
end
