def initialize_block
  [['b','o'],['x', 'k'],['d','q'],['c','p'],['n','a'],['g','t'],['r','e'],['f','s'],['j','w'],['h','u'],['v','i'],['l','y'],['z','m']]
end

def block_word?(word)
  true_arr = []
  block = initialize_block
  word.split("").each do |letter|
    block.each do |arr|
      block.delete(arr) if arr.include?(letter)
      true_arr << arr.include?(letter) if arr.include?(letter) == true
      next if arr.include?(letter)
    end
  end
  true_arr.length == word.length
end

p block_word? 'alex'

#ALTERNATIVE APPROACH
# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze
# p BLOCKS
# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? { |block| up_string.count(block) >= 2 }
# end