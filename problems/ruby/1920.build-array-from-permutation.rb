#
# @lc app=leetcode id=1920 lang=ruby
#
# [1920] Build Array from Permutation
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def build_array(nums)
    nums.map{|i| nums[i]}
end
# @lc code=end