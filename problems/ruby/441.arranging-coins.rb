#
# @lc app=leetcode id=441 lang=ruby
#
# [441] Arranging Coins
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  k = 0
  while n - k > 0
    k += 1
    n -= k
  end
  k
end
# @lc code=end

