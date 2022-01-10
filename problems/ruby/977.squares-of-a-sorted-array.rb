#
# @lc app=leetcode id=977 lang=ruby
#
# [977] Squares of a Sorted Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  nums.map{|x| x * x}.sort
end
# @lc code=end

