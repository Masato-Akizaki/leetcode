#
# @lc app=leetcode id=1005 lang=ruby
#
# [1005] Maximize Sum Of Array After K Negations
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def largest_sum_after_k_negations(nums, k)
  (1..k).each do
    min = nums.min
    index = nums.index(min)
    nums[index] = min * -1
  end
  nums.sum
end
# @lc code=end

