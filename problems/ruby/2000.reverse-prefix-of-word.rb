#
# @lc app=leetcode id=2000 lang=ruby
#
# [2000] Reverse Prefix of Word
#

# @lc code=start
# @param {String} word
# @param {Character} ch
# @return {String}
def reverse_prefix(word, ch)
    index = word.index(ch)
    return word if index.nil?
    return word.reverse if index == word.length-1
    word[0..index].reverse + word[index+1..-1]
end
# @lc code=end