#
# @lc app=leetcode id=2144 lang=ruby
#
# [2144] Minimum Cost of Buying Candies With Discount
#

# @lc code=start
# @param {Integer[]} cost
# @return {Integer}
def minimum_cost(cost)
    min_cost = 0
    n = 1
    cost.sort.reverse.each do |c|
        if n == 3
            n = 1
        else
            min_cost += c
            n += 1
        end
    end
    min_cost
end
# @lc code=end