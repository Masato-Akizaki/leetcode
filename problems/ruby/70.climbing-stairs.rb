#
# @lc app=leetcode id=70 lang=ruby
#
# [70] Climbing Stairs
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  dp = []
  dp[0] = dp[1] = 1
  2.upto(n) do |i|
    dp[i] = dp[i-1] + dp[i-2]
  end
  dp.last
end
# @lc code=end

