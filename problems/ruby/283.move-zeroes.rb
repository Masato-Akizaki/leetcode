#
# @lc app=leetcode id=283 lang=ruby
#
# [283] Move Zeroes
#

# @lc code=start
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  nums_length = nums.length
  zero_count = nums.count(0)
  non_zero_count = nums.length - zero_count
  nums.delete(0)
  nums.fill(0, non_zero_count..nums_length-1)
end
# @lc code=end

