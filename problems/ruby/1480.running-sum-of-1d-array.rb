#
# @lc app=leetcode id=1480 lang=ruby
#
# [1480] Running Sum of 1d Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    running_sum = []
    [*0...nums.length].each do |i|
        running_sum << nums[0..i].sum
    end
    running_sum
end
# @lc code=end