#
# @lc app=leetcode id=2190 lang=ruby
#
# [2190] Most Frequent Number Following Key In an Array
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} key
# @return {Integer}
def most_frequent(nums, key)
  nums.select.with_index{|_, i| nums[i-1] == key}.tally.sort_by{|_, v| v}.to_h.keys[-1]
end
# @lc code=end