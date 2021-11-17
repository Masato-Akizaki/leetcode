#
# @lc app=leetcode id=746 lang=ruby
#
# [746] Min Cost Climbing Stairs
#

# @lc code=start
# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  dp = [0]*cost.length
  dp[0] = cost[0]
  dp[1] = cost[1]

  (2...cost.length).each do |i|
    dp[i] = [dp[i-2] + cost[i], dp[i-1] + cost[i]].min
  end
  
  [dp[-2], dp[-1]].min
end
# @lc code=end

