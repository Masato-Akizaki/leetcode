#
# @lc app=leetcode id=2395 lang=ruby
#
# [2395] Find Subarrays With Equal Sum
#

# @lc code=start
# @param {Integer[]} nums
# @return {Boolean}
def find_subarrays(nums)
    nums.each_cons(2).map(&:sum).tally.any?{|_,v| v >= 2}
end
# @lc code=end