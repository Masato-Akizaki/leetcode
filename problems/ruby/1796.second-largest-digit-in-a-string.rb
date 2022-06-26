#
# @lc app=leetcode id=1796 lang=ruby
#
# [1796] Second Largest Digit in a String
#

# @lc code=start
# @param {String} s
# @return {Integer}
def second_highest(s)
    digit = s.delete("^0-9").chars.uniq.map(&:to_i).sort
    digit.length < 2 ? -1 : digit[-2]
end
# @lc code=end