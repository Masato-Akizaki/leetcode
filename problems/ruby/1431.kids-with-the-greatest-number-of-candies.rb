#
# @lc app=leetcode id=1431 lang=ruby
#
# [1431] Kids With the Greatest Number of Candies
#

# @lc code=start
# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
    max = candies.max
    candies.map{|i| i + extra_candies >= max}
end
# @lc code=end