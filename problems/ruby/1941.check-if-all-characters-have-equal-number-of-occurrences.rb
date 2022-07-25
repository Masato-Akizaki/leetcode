#
# @lc app=leetcode id=1941 lang=ruby
#
# [1941] Check if All Characters Have Equal Number of Occurrences
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def are_occurrences_equal(s)
    s.chars.tally.values.uniq.length == 1
end
# @lc code=end