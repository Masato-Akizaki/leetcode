#
# @lc app=leetcode id=1365 lang=ruby
#
# [1365] How Many Numbers Are Smaller Than the Current Number
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
    nums.map{|n| nums.count{|x| n > x }}
end
# @lc code=end