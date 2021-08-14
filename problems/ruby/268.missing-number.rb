#
# @lc app=leetcode id=268 lang=ruby
#
# [268] Missing Number
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  n = nums.length
  n * (n+1) / 2 - nums.sum
end
# @lc code=end

