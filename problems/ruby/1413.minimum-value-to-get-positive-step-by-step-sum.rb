#
# @lc app=leetcode id=1413 lang=ruby
#
# [1413] Minimum Value to Get Positive Step by Step Sum
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def min_start_value(nums)
    min_start_val = 0
    sum = 0
    nums.each do |num|
        sum += num
        min_start_val = (sum < min_start_val) ?  sum : min_start_val
    end
    min_start_val * -1 + 1
end
# @lc code=end