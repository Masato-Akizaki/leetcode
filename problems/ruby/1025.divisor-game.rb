#
# @lc app=leetcode id=1025 lang=ruby
#
# [1025] Divisor Game
#

# @lc code=start
# @param {Integer} n
# @return {Boolean}
def divisor_game(n)
  turn = 1
  while n > 1 do
    x = (1..n-1).select{|i| n % i == 0}.min
    n -= x
    turn *= -1
  end
  turn < 0
end
# @lc code=end

