# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# def century year
#   century = year/100
#   return century += 1 if year/100 == 0
#   return century += 1 if year % 2 == 0 && year % 100 != 0
#   return century if year % 100 == 0
#   return century+1  if (year-1) % 100 == 0
# end

def century year
  century = year/100
  return (century+1).to_s + century_suffix(century + 1) if year/100 == 0 || year % 2 == 0 && year % 100 != 0 || (year-1) % 100 == 0 
  return century.to_s + century_suffix(century) if year % 100 == 0
  return (century+1).to_s + century_suffix(century+1)
end

def century_suffix cent
  return 'th' if [11, 12, 13].include?(cent % 100)
  last_digit = cent % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century 2001
p century 2000
p century 1
p century 0
p century 1000001

# ALTERNATIVE APPROACH

# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end