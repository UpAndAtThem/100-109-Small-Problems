# Write two methods that each take a time of day in 24 hour format.
# return the number of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439.
# You may not use ruby's Date and Time methods.

# Examples:

def after_midnight(time_str)
  count = 0
  hour, min = time_str.split ':'
  hour.to_i.times { count += 60 }
  count += min.to_i
  count % 1440
end

def before_midnight(time_str)
  count = 1440
  hour, min = time_str.split ':'
  hour.to_i.times { count -= 60 }
  count -= min.to_i
  count % 1440
end

p after_midnight '01:05'

# ALTERNATIVE APPROACH

# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def after_midnight(time_str)
#   hours, minutes = time_str.split(':').map(&:to_i)
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(time_str)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
# end
