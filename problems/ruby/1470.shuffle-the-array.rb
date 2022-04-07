#
# @lc app=leetcode id=1470 lang=ruby
#
# [1470] Shuffle the Array
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
    [nums[0..n-1], nums[n..-1]].transpose.flatten
end
# @lc code=end