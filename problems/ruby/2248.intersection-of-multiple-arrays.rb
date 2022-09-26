#
# @lc app=leetcode id=2248 lang=ruby
#
# [2248] Intersection of Multiple Arrays
#

# @lc code=start
# @param {Integer[][]} nums
# @return {Integer[]}
def intersection(nums)
    p nums.map{|x| x.uniq}.flatten.tally.select{|_,v| v == nums.length}.keys.sort
end
# @lc code=end