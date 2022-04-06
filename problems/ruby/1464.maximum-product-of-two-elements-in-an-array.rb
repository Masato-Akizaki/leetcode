#
# @lc app=leetcode id=1464 lang=ruby
#
# [1464] Maximum Product of Two Elements in an Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
    (nums.sort[-1] - 1) * (nums.sort[-2] - 1)
end
# @lc code=end