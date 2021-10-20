#
# @lc app=leetcode id=628 lang=ruby
#
# [628] Maximum Product of Three Numbers
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def maximum_product(nums)
  nums = nums.sort
  [nums.last(3).inject(:*), nums.last * nums[0] * nums[1]].max
end
# @lc code=end

