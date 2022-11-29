#
# @lc app=leetcode id=34 lang=ruby
#
# [34] Find First and Last Position of Element in Sorted Array
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  i = nums.index(target) || -1
  j = nums.rindex(target) || -1
  [i, j]
end
# @lc code=end

