#
# @lc app=leetcode id=136 lang=ruby
#
# [136] Single Number
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  return nums.first if nums.size < 2
  
  num = nums[0]
  (1..nums.size-1).each do |i|
    p num
    p num ^= nums[i]
  end
  
  num
end
# @lc code=end

