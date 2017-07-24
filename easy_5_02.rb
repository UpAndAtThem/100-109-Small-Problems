# The time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.
# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm).
# Your method should work with any integer input.
# You may not use ruby's Date and Time classes.

def min_hour(num)
  hour = (num / 60) % 24
  min = num % 60
  [hour, min]
end

def hour_min_format(num)
  num.to_s.split('').size == 1 ? "0#{num}" : num.to_s
end

def leading_zero?(hour, min)
  hour = hour_min_format hour
  min = hour_min_format min
  [hour, min]
end

def time_of_day(num)
  hour, min = min_hour num
  hour, min = leading_zero? hour, min
  num.positive? ? "#{hour}:#{min}" : "#{hour}:#{min}"
end

p time_of_day(0) == '00:00'
p time_of_day(-3) == '23:57'
p time_of_day(3000) == '02:00'
p time_of_day(65) == '01:05'

# ALTERNATIVE APPROACH

# # MINUTES_PER_HOUR = 60
# # HOURS_PER_DAY = 24
# # MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# # def time_of_day(delta_minutes)
# #   delta_minutes =  delta_minutes % MINUTES_PER_DAY
# #   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end
