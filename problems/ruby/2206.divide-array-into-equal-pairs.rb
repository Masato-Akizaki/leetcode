#
# @lc app=leetcode id=2206 lang=ruby
#
# [2206] Divide Array Into Equal Pairs
#

# @lc code=start
# @param {Integer[]} nums
# @return {Boolean}
def divide_array(nums)
  nums.tally.values.all?(&:even?)
end
# @lc code=end