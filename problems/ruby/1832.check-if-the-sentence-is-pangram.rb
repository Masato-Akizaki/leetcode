#
# @lc app=leetcode id=1832 lang=ruby
#
# [1832] Check if the Sentence Is Pangram
#

# @lc code=start
# @param {String} sentence
# @return {Boolean}
def check_if_pangram(sentence)
    sentence.chars.uniq.length == 26
end
# @lc code=end