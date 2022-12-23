#
# @lc app=leetcode id=75 lang=ruby
#
# [75] Sort Colors
#

# @lc code=start
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  zero = zero_or_one = -1
  for i in 0...nums.size
    curr = nums[i]; nums[i] = 2
    nums[zero_or_one += 1]  = 1 if curr <= 1
    nums[zero += 1]         = 0 if curr == 0
  end
end
# @lc code=end

