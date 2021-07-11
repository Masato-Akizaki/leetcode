#
# @lc app=leetcode id=169 lang=ruby
#
# [169] Majority Element
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  nums.tally.max{ |x, y| x[1] <=> y[1] }.first
end
# @lc code=end

