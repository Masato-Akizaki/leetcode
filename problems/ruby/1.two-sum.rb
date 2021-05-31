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
  hash = {}
  nums.each_with_index do |n, idx|
    return [hash[target - n], idx] if hash[target - n]
    hash[n] = idx
  end
end
# @lc code=end

