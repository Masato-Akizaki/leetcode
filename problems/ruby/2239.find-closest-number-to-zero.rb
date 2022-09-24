#
# @lc app=leetcode id=2239 lang=ruby
#
# [2239] Find Closest Number to Zero
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def find_closest_number(nums)
    num = nums.map(&:abs).min
    nums.include?(num) ? num : num * -1
end
# @lc code=end