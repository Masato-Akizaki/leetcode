#
# @lc app=leetcode id=645 lang=ruby
#
# [645] Set Mismatch
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def find_error_nums(nums)
  duplicate_num = nums.tally.find {|k,v| v == 2}[0]
  dif = nums.sum - [*1..nums.length].sum
  [duplicate_num, duplicate_num - dif]
end
# @lc code=end

