#
# @lc app=leetcode id=1 lang=ruby
#
# [1] Two Sum
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index do |_, idx|
    i = idx + 1
    while i < nums.length
      return [idx, i] if nums[idx] + nums[i] == target
      i + 1
    end
  end
end
# @lc code=end

