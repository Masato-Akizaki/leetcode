#
# @lc app=leetcode id=961 lang=ruby
#
# [961] N-Repeated Element in Size 2N Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def repeated_n_times(nums)
  n = nums.length / 2
  nums.tally.select{|k, v| v == n}.keys[0]
end
# @lc code=end

