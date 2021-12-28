#
# @lc app=leetcode id=922 lang=ruby
#
# [922] Sort Array By Parity II
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity_ii(nums)
  [nums.select(&:even?), nums.select(&:odd?)].transpose.flatten
end
# @lc code=end

