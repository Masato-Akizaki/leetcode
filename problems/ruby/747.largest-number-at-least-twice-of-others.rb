#
# @lc app=leetcode id=747 lang=ruby
#
# [747] Largest Number At Least Twice of Others
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def dominant_index(nums)
  max = nums.max
  index = nums.index(max)
  nums.delete(max)
  return nums.all? { |n| n * 2 <= max } ? index : -1
end
# @lc code=end

