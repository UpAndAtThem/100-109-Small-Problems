# Write a method that returns the number of Friday the 13ths in the year given by an argument. 
# You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) 
# and that it will remain in use for the foreseeable future.

# Examples:

# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

require 'date'

def friday_13th(year)
  calendar = Date.new(year)
  count = 0
  1.upto(365) do |day|
    count += 1 if calendar.friday? && calendar.day == 13
    calendar = calendar.next_day
  end
  count
end

friday_13th 1986