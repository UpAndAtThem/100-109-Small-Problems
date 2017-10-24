def word_count(str)
  count = 0
  count_arr = []
  str.split.each do |word|
    count += 1
    count_arr << count if word[-1] == '.'
    count = 0 if ['.', '!', '?'].include?(word[-1])
  end
  count_arr.max
end

frankenstein = File.read('sample_text.txt')

p count = word_count(frankenstein)




