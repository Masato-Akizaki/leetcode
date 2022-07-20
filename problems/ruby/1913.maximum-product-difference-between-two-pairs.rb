#
# @lc app=leetcode id=1913 lang=ruby
#
# [1913] Maximum Product Difference Between Two Pairs
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def max_product_difference(nums)
    nums.sort!
    nums[-1] * nums[-2] - nums[0] * nums[1]
end
# @lc code=end