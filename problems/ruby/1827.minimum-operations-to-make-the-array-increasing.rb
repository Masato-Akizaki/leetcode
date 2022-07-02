#
# @lc app=leetcode id=1827 lang=ruby
#
# [1827] Minimum Operations to Make the Array Increasing
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def min_operations(nums)
    operate = 0
    [*1...nums.length].each do |i|
        if nums[i-1] >= nums[i]
            operate += (nums[i-1] + 1) - nums[i]
            nums[i] = nums[i-1] + 1
        end
    end
    operate
end
# @lc code=end