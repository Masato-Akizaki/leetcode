#
# @lc app=leetcode id=507 lang=ruby
#
# [507] Perfect Number
#

# @lc code=start
# @param {Integer} num
# @return {Boolean}
def check_perfect_number(num)
  require "prime"

  def sum_divisors(n)
    Prime.prime_division(n).map {|p, e| (p ** (e + 1) - 1) / (p - 1) }.inject(:*)
  end

  return false if num == 1
  num == sum_divisors(num) / 2
end
# @lc code=end

