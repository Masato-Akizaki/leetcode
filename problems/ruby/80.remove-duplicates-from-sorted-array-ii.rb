#
# @lc app=leetcode id=80 lang=ruby
#
# [80] Remove Duplicates from Sorted Array II
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  i = 0
  nums.each { |n| nums[(i+=1)-1] = n if i < 2 || n > nums[i-2] }
  i
end
# @lc code=end

