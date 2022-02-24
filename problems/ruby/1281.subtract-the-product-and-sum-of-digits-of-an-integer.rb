#
# @lc app=leetcode id=1281 lang=ruby
#
# [1281] Subtract the Product and Sum of Digits of an Integer
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n)
    digits = n.to_s.split('').map(&:to_i)
    digits.inject(:*) - digits.sum
end
# @lc code=end