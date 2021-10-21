#
# @lc app=leetcode id=643 lang=ruby
#
# [643] Maximum Average Subarray I
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
  current_max = nums[0..k-1].sum
  current_sum = current_max
  for i in 0..(nums.length-k-1) do
    current_sum = current_sum - nums[i] + nums[i+k]
    current_max = [current_sum, current_max].max
  end
  current_max.to_f / k
end
# @lc code=end

