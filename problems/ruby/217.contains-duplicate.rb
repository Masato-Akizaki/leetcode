#
# @lc app=leetcode id=217 lang=ruby
#
# [217] Contains Duplicate
#

# @lc code=start
# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  hash = {}
  nums.each do |n|
    return true if hash[n]
    hash[n] = 1
  end
  false
end
# @lc code=end

