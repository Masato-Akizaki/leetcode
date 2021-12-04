#
# @lc app=leetcode id=824 lang=ruby
#
# [824] Goat Latin
#

# @lc code=start
# @param {String} sentence
# @return {String}
def to_goat_latin(sentence)
  vowel = ['a', 'i', 'u', 'e', 'o']
  output = []
  sentence.split(' ').each_with_index do |word, i|
    if vowel.include?(word[0].downcase)
      output << word + 'ma' + 'a' * (i + 1)
    else
      first_letter = word.slice!(0)
      output << word + first_letter + 'ma' + 'a' * (i + 1)
    end
  end
  output.join(' ')
end
# @lc code=end

