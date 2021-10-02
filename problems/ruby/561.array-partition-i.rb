#
# @lc app=leetcode id=561 lang=ruby
#
# [561] Array Partition I
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  nums.sort.each_slice(2).map {|n| n.first}.sum
end
# @lc code=end

