#
# @lc app=leetcode id=1748 lang=ruby
#
# [1748] Sum of Unique Elements
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def sum_of_unique(nums)
    nums.tally.select{|_, v| v == 1}.keys.sum
end
# @lc code=end