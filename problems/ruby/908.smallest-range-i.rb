#
# @lc app=leetcode id=908 lang=ruby
#
# [908] Smallest Range I
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def smallest_range_i(nums, k)
  if nums.max - nums.min >= k * 2
    return (nums.max - k) - (nums.min + k)
  else
    return 0
  end
end
# @lc code=end

