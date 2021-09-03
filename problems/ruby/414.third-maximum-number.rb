#
# @lc app=leetcode id=414 lang=ruby
#
# [414] Third Maximum Number
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
  nums = nums.uniq.sort.reverse
  nums[2] ? nums[2] : nums[0]
end
# @lc code=end

