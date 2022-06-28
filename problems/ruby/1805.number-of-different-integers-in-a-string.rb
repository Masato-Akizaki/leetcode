#
# @lc app=leetcode id=1805 lang=ruby
#
# [1805] Number of Different Integers in a String
#

# @lc code=start
# @param {String} word
# @return {Integer}
def num_different_integers(word)
    (word.split(/[a-z]+/) - [""]).map(&:to_i).uniq.length
end
# @lc code=end