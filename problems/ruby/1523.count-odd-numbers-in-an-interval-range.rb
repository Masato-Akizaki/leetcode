#
# @lc app=leetcode id=1523 lang=ruby
#
# [1523] Count Odd Numbers in an Interval Range
#

# @lc code=start
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def count_odds(low, high)
    return (high - low) / 2 if low.even? && high.even?
    return (high - low) / 2 + 1
end
# @lc code=end