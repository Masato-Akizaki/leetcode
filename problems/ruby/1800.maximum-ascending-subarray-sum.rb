#
# @lc app=leetcode id=1800 lang=ruby
#
# [1800] Maximum Ascending Subarray Sum
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def max_ascending_sum(nums)
    nums.slice_when { |a, b| b <= a }.to_a.map(&:sum).max
end
# @lc code=end