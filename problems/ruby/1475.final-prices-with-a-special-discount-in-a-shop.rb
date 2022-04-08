#
# @lc app=leetcode id=1475 lang=ruby
#
# [1475] Final Prices With a Special Discount in a Shop
#

# @lc code=start
# @param {Integer[]} prices
# @return {Integer[]}
def final_prices(prices)
    final_prices = []
    prices.each_with_index do |p, i|
        discount = prices[i+1..-1].select{|x| x <= p}.first
        discount ? final_prices << p - discount : final_prices << p
    end
    final_prices
end
# @lc code=end