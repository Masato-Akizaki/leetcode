#
# @lc app=leetcode id=896 lang=ruby
#
# [896] Monotonic Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Boolean}
def is_monotonic(nums)
  return true if nums.length == 1
  sign = 0
  for i in 0...nums.length-1 do
    next if nums[i+1] - nums[i] == 0
    sign = nums[i+1] - nums[i] if sign == 0
    return false if (nums[i+1] - nums[i]) * sign < 0 
  end
  return true
end
# @lc code=end

