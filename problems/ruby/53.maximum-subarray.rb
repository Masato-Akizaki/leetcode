#
# @lc app=leetcode id=53 lang=ruby
#
# [53] Maximum Subarray
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    for i in 1...nums.length do
      nums[i] += nums[i-1] if nums[i-1] > 0
    end
    nums.max
end
# @lc code=end

