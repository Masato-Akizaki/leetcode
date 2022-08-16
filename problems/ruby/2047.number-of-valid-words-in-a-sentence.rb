#
# @lc app=leetcode id=2047 lang=ruby
#
# [2047] Number of Valid Words in a Sentence
#

# @lc code=start
# @param {String} sentence
# @return {Integer}
def count_valid_words(sentence)
    sentence.split(" ").delete_if{|x| x =~ /[0-9]|^-|-$|.*(!|,|\.).+|-.*-|(!|,|\.)-|-(!|,|\.)/ }.length
end
# @lc code=end