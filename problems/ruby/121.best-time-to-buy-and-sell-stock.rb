#
# @lc app=leetcode id=121 lang=ruby
#
# [121] Best Time to Buy and Sell Stock
#

# @lc code=start
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profit = max_profit = 0
  for i in 0..(prices.length - 2) do
    profit = [0, profit + prices[i+1] - prices[i]].max
    max_profit = [max_profit, profit].max
  end
  max_profit
end
# @lc code=end

