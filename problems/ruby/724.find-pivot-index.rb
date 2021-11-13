#
# @lc app=leetcode id=724 lang=ruby
#
# [724] Find Pivot Index
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
  left_sum = 0
  right_sum = nums.sum
  nums.each_with_index do |n, i|
    right_sum -= n
    return i if left_sum == right_sum
    left_sum += n
  end
  return -1
end
# @lc code=end

