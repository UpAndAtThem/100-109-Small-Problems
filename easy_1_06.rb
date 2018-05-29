def reverse_five(str)
  str.split.map { |word| word.length >= 5 ? word.reverse : word }.join' '
end
