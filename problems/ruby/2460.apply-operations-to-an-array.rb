#
# @lc app=leetcode id=2460 lang=ruby
#
# [2460] Apply Operations to an Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def apply_operations(nums)
  i = 0
  while i < nums.length do
    if nums[i] == nums[i+1]
      nums[i] *= 2
      nums[i+1] = 0
      i += 1
    end
    i += 1
  end
  nums.select{|x| x > 0} + nums.select{|x| x == 0}
end
# @lc code=end

