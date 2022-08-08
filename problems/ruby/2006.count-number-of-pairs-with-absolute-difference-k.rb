#
# @lc app=leetcode id=2006 lang=ruby
#
# [2006] Count Number of Pairs With Absolute Difference K
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_k_difference(nums, k)
    nums.combination(2).to_a.count{|x| (x[0]-x[1]).abs == k}
end
# @lc code=end