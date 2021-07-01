#
# @lc app=leetcode id=122 lang=ruby
#
# [122] Best Time to Buy and Sell Stock II
#

# @lc code=start
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  buy = nil
  profit = max_profit = 0
  for i in 0..(prices.length-1) do
    if i == prices.length-1
      if buy
        profit =  prices[i] - buy
        break max_profit += profit
      else
        break max_profit
      end
    end

    buy = prices[i] if prices[i] < prices[i+1] && buy.nil?
    if prices[i] > prices[i+1] && buy
      profit =  prices[i] - buy
      buy = nil
      max_profit += profit
    end
  end
  max_profit
end
# @lc code=end


