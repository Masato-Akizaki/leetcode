#
# @lc app=leetcode id=1662 lang=ruby
#
# [1662] Check If Two String Arrays are Equivalent
#

# @lc code=start
# @param {String[]} word1
# @param {String[]} word2
# @return {Boolean}
def array_strings_are_equal(word1, word2)
    word1.join == word2.join
end
# @lc code=end