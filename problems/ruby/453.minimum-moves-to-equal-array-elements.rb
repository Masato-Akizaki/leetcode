#
# @lc app=leetcode id=453 lang=ruby
#
# [453] Minimum Moves to Equal Array Elements
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def min_moves(nums)
  nums.sum - (nums.length * nums.min)
end
# @lc code=end

