#
# @lc app=leetcode id=594 lang=ruby
#
# [594] Longest Harmonious Subsequence
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def find_lhs(nums)
  count = nums.tally
  nums = nums.uniq.sort
  dif = 0
  nums.each_with_index do |n, i|
    next if nums[i+1].nil? || nums[i+1] - n > 1
    dif = [dif, count[n] + count[nums[i+1]]].max
  end
  dif
end
# @lc code=end

