#
# @lc app=leetcode id=219 lang=ruby
#
# [219] Contains Duplicate II
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  hash = {}
  nums.each_with_index do |n, i|
    return true if hash[n] && i - hash[n] <= k
    hash[n] = i
  end
  false
end
# @lc code=end

