#
# @lc app=leetcode id=1403 lang=ruby
#
# [1403] Minimum Subsequence in Non-Increasing Order
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def min_subsequence(nums)
  nums = nums.sort.reverse
  for i in [*0..nums.length-1] do
      return nums[0..i] if nums[0..i].sum > nums[i+1..-1].sum
  end
end
# @lc code=end