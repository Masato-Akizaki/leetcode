#
# @lc app=leetcode id=2455 lang=ruby
#
# [2455] Average Value of Even Numbers That Are Divisible by Three
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def average_value(nums)
    nums = nums.select{|x| x % 6 == 0}
    nums.length > 0 ? nums.sum / nums.length : 0
end
# @lc code=end