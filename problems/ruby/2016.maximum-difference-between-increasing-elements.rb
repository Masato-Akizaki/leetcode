#
# @lc app=leetcode id=2016 lang=ruby
#
# [2016] Maximum Difference Between Increasing Elements
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def maximum_difference(nums)
    max = nums.combination(2).to_a.map{|x| x[1] - x[0]}.max
    max > 0 ? max : -1 
end
# @lc code=end